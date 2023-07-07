import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/injection.dart';
import 'package:rick_and_morty/presentation/controllers/main_page_controller.dart';
import 'package:rick_and_morty/presentation/widgets/character_card_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../../data/models/character_model.dart';
import '../../data/repositories/connectivity_service.dart';
import '../widgets/filters_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = getIt<MainPageController>();
  final connectivity = getIt<ConnectivityService>();

  List<ReactionDisposer> disposers = [];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    pageController.fetchCharactersFromApiAsync();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    disposers = [
      reaction(
          (_) => pageController.state.mapOrNull(
                error: (errorMsg) => errorMsg.errorText,
              ), (errorMsg) {
        final messenger = ScaffoldMessenger.of(context);

        messenger.showSnackBar(SnackBar(content: Text(errorMsg.toString())));
      }, delay: 4000),
      reaction((_) => connectivity.connectivityStream.value, (result) {
        final messenger = ScaffoldMessenger.of(context);
        final isOnline = !(result == ConnectivityResult.none);

        messenger.showSnackBar(SnackBar(
            content: Text(!isOnline ? 'You\'re offline' : 'You\'re online')));

        pageController.onConnectionStatusChange(isOnline);
      }, delay: 4000),
    ];
  }

  @override
  void dispose() {
    connectivity.dispose();
    for (var d in disposers) {
      d();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color.fromRGBO(32, 35, 41, 0.8),
        appBar: AppBar(
          title: Observer(builder: (_) {
            if (pageController.isOnline) {
              return const Text(
                'Main Page (Online)',
                style: TextStyle(color: Colors.green),
              );
            }
            return const Text(
              'Main Page (Offline)',
              style: TextStyle(color: Colors.red),
            );
          }),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Observer(
            builder: (context) {
              return pageController.state.when(
                loading: () => const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 20),
                      Text(
                        'Please wait\nSyncing data',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                error: (msg) => const SizedBox.shrink(),
                data: (characters) {
                  if ((characters as List<CharacterModel>).isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: RefreshIndicator(
                        onRefresh: () => pageController.refreshAsync(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Observer(builder: (_) {
                              if (pageController.isFiltersPanelExpanded) {
                                return const FiltersWidget();
                              }

                              return ElevatedButton(
                                  onPressed: () => pageController
                                      .onFiltersPanelShowBtnPressed(),
                                  child: const Text('Open filters panel'));
                            }),
                            const SizedBox(height: 20),
                            Expanded(
                              child: ListView.separated(
                                shrinkWrap: true,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 10),
                                itemBuilder: (_, index) => CharacterCardWidget(
                                    characterModel: characters[index]),
                                itemCount: characters.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (characters.isEmpty &&
                      !pageController.isClearFiltersBtnEnabled) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'No data available.\nTry to refresh.',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            child: const Text('Refresh'),
                            onPressed: () =>
                                pageController.fetchCharactersFromApiAsync(),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const FiltersWidget();
                  }
                },
              );
            },
          ),
        ),
      );
}
