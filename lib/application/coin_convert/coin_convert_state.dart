part of 'coin_convert_notifier.dart';

@freezed
class CoinConvertState with _$CoinConvertState {
  const factory CoinConvertState({
    Coin? from,
    Coin? to,
    List<Coin>? all,
    List<Coin>? portafolio,
    ConfirmModel? confirm,
    required String amount,
    required bool isLoading,
    required bool isPreview,
    required Option<ValidationError> validation,
    required Option<Either<CoinFailure, Unit>> convertFailureOrSuccessOption,
  }) = _CoinConvertState;

  factory CoinConvertState.initial() => CoinConvertState(
        isLoading: true,
        amount: '0',
        isPreview: false,
        validation: none(),
        convertFailureOrSuccessOption: none(),
      );
}
