part of 'write_profile_introduction_bloc.dart';

@freezed
class WriteProfileIntroductionState with _$WriteProfileIntroductionState {
  const factory WriteProfileIntroductionState.initial() = _Initial;

  const factory WriteProfileIntroductionState.loading() =
      WriteProfileIntroLoading;

  const factory WriteProfileIntroductionState.error({
    required String message,
    String? title,
  }) = WriteProfileIntroError;

  const factory WriteProfileIntroductionState.generateProfileIntroductionSuccess(
      BaseResponse response) = GenerateProfileIntroductionSuccess;

  const factory WriteProfileIntroductionState.getAutoGenerateHistorySuccess(
      BaseResponse response) = GetAutoGenerateHistorySuccess;
}
