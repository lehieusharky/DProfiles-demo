import 'package:dartz/dartz.dart';
import 'package:demo_dprofiles/src/features/edit_profile/domain/repositories/edit_profile_repository.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/base_response.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/error_response.dart';
import 'package:injectable/injectable.dart';

abstract class EditProfileUseCase {
  Future<Either<List<String>, BaseResponse>> addNewEducation(
      EducationModel data);

  Future<Either<List<String>, BaseResponse>> addNewExperience(
      ExperienceModel data);

  Future<Either<List<String>, BaseResponse>> addNewCertificate(
      CertificateModel data);

  Future<Either<List<String>, BaseResponse>> updateUserInfo(UserInfoModel data);
}

@Injectable(as: EditProfileUseCase)
class EditProfileUseCaseImpl implements EditProfileUseCase {
  final EditProfileRepository _editProfileRepository;

  EditProfileUseCaseImpl(this._editProfileRepository);

  @override
  Future<Either<List<String>, BaseResponse>> addNewCertificate(
      CertificateModel data) async {
    final result = await _editProfileRepository.addNewCertificate(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> addNewEducation(
      EducationModel data) async {
    final result = await _editProfileRepository.addNewEducation(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> addNewExperience(
      ExperienceModel data) async {
    final result = await _editProfileRepository.addNewExperience(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }

  @override
  Future<Either<List<String>, BaseResponse>> updateUserInfo(
      UserInfoModel data) async {
    final result = await _editProfileRepository.updateUserInfo(data);
    return result.fold(
      (l) => Left((l.response as ErrorResponse).message),
      (r) => Right(r),
    );
  }
}
