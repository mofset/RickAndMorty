import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_call_states.freezed.dart';

@freezed
abstract class AsyncCallState<T> with _$AsyncCallState {
  const factory AsyncCallState.loading() = _Loading;
  const factory AsyncCallState.error(String errorText) = _Error;
  const factory AsyncCallState.data(T data) = _Data;
}
