import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobx/mobx.dart';

part 'connectivity_service.g.dart';

class ConnectivityService extends _ConnectivityService
    with _$ConnectivityService {}

abstract class _ConnectivityService with Store {
  @observable
  ObservableStream<ConnectivityResult> connectivityStream =
      ObservableStream(Connectivity().onConnectivityChanged);

  void dispose() {}
}
