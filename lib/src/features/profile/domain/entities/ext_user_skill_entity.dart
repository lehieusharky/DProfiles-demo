import 'package:demo_dprofiles/src/features/profile/data/models/user_skill_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/skill_component.dart';
import 'package:flutter/material.dart';

extension UserSkillExt on UserSkillModel {
  Widget toWidget() {
    return SkillItem(title: skill!.name ?? '');
  }
}
