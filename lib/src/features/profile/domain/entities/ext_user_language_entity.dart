import 'package:demo_dprofiles/src/features/profile/data/models/user_language_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/skill_component.dart';
import 'package:flutter/material.dart';

extension UserLanguageExt on UserLanguageModel {
  Widget toWidget() {
    return SkillItem(title: languageId.toString());
  }
}
