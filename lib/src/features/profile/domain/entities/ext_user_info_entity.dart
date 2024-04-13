import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';

extension UserInfoModelExt on UserInfoModel {
  String getSalaryPayType() {
    return switch (salaryPayType) {
      0 => 'Pay per job',
      _ => 'Pay by month',
    };
  }

  String getSalary() => salary == null ? '' : salary.toString();
}
