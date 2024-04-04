part of 'write_profile_introduction_bloc.dart';

@freezed
class WriteProfileIntroductionEvent with _$WriteProfileIntroductionEvent {
  const factory WriteProfileIntroductionEvent.started() = _Started;

  const factory WriteProfileIntroductionEvent.generateProfileIntroduction(
      ProfileIntroductionModel model) = GenerateProfileIntroduction;

  const factory WriteProfileIntroductionEvent.getAutoGenerateHistory() =
      GetAutoGenerateHistory;
}
