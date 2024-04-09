import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/cupertino.dart';

enum AiFeatureTypes {
  profileIntroduction,
  coverLetter,
  skillKnowledge,
  interviewQuestion
}

extension AiFeatureTypesExt on AiFeatureTypes {
  String getTitle(BuildContext context) {
    return switch (this) {
      AiFeatureTypes.profileIntroduction =>
        appLocal(context).writeYourProfileIntroduction,
      AiFeatureTypes.coverLetter => appLocal(context).writeCoverLetter,
      AiFeatureTypes.skillKnowledge =>
        appLocal(context).skillsKnowledgeByJobTitle,
      AiFeatureTypes.interviewQuestion => appLocal(context).jobInterviewQA,
    };
  }

  String getImageTopicPath() {
    return switch (this) {
      AiFeatureTypes.profileIntroduction =>
        Assets.images.aiFeatures.profileIntroduction.path,
      AiFeatureTypes.coverLetter => Assets.images.aiFeatures.letter.path,
      AiFeatureTypes.skillKnowledge => Assets.images.aiFeatures.folder.path,
      AiFeatureTypes.interviewQuestion => Assets.images.aiFeatures.job.path,
    };
  }

  Color getBackgroundColor() {
    return switch (this) {
      AiFeatureTypes.profileIntroduction => MyColor.green58BD7D,
      AiFeatureTypes.coverLetter => MyColor.get777E90,
      AiFeatureTypes.skillKnowledge => MyColor.get23262F,
      AiFeatureTypes.interviewQuestion => MyColor.blue3772FF,
    };
  }

  PageRouteInfo<dynamic> getRoute() {
    return switch (this) {
      AiFeatureTypes.profileIntroduction =>
        const WriteProfileIntroductionRoute(),
      AiFeatureTypes.coverLetter => const WriteCoverLetterRoute(),
      AiFeatureTypes.skillKnowledge => const WriteSkillKnowledgeRoute(),
      AiFeatureTypes.interviewQuestion => const WriteInterviewQuestionRoute(),
    };
  }
}
