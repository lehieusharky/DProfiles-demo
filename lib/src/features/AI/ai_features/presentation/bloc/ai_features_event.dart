part of 'ai_features_bloc.dart';

@freezed
class AiFeaturesEvent with _$AiFeaturesEvent {
  const factory AiFeaturesEvent.started() = _Started;

  const factory AiFeaturesEvent.getAutoGenerateHistory() = GetAutoGenerateHistory;
}
