part of 'public_profile_bloc.dart';

@freezed
class PublicProfileEvent with _$PublicProfileEvent {

  const factory PublicProfileEvent.getBasicInfo(String userName) =
      PublicProfileGetBasicInfo;
}
