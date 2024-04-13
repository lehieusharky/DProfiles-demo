// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i36;
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/create_character_bot_model.dart'
    as _i41;
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/pages/create_ai_character_page.dart'
    as _i11;
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/pages/my_ai_character_page.dart'
    as _i23;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/ai_features_history_page.dart'
    as _i5;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/auto_generation_history_detail.dart'
    as _i7;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_cover_letter/presentation/pages/write_cover_letter_page.dart'
    as _i32;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_interview_question/presentation/pages/write_interview_question_page.dart'
    as _i33;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_profile_introduction/presentation/pages/write_profile_introduction_page.dart'
    as _i34;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_skill_knowledge/presentation/pages/write_skill_knowledge.dart'
    as _i35;
import 'package:demo_dprofiles/src/features/AI/chat_with_ai_bot/presentation/pages/chat_with_ai_page.dart'
    as _i9;
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/pages/create_digital_profile_page.dart'
    as _i13;
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/pages/create_dprofile_success_page.dart'
    as _i14;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/auth_gate/auth_gate_page.dart'
    as _i6;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/connect_wallet/presentation/connect_wallet_page.dart'
    as _i10;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/forgot_password_page.dart'
    as _i18;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/update_new_password_page.dart'
    as _i29;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/verify_email_forgot_password.dart'
    as _i30;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/local_auth/presentation/pages/local_auth_page.dart'
    as _i22;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/page/sign_in_page.dart'
    as _i26;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/create_an_account_page.dart'
    as _i12;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_page.dart'
    as _i27;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_success_page.dart'
    as _i28;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/verify_sign_up_page.dart'
    as _i31;
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart'
    as _i39;
import 'package:demo_dprofiles/src/features/blogs/presentation/blog_detail_page.dart'
    as _i8;
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_page.dart'
    as _i15;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/about_page.dart'
    as _i1;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/add_new_certificate_page.dart'
    as _i2;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/add_new_education_page.dart'
    as _i3;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/add_new_experience_page.dart'
    as _i4;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/edit_profile_page.dart'
    as _i16;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/list_certificate_page.dart'
    as _i19;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/list_education_page.dart'
    as _i20;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/list_experience_page.dart'
    as _i21;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/open_to_work_page.dart'
    as _i25;
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart'
    as _i40;
import 'package:demo_dprofiles/src/features/home/presentation/pages/feed_detail_page.dart'
    as _i17;
import 'package:demo_dprofiles/src/features/onboarding/presentation/page/onboarding_page.dart'
    as _i24;
import 'package:demo_dprofiles/src/utils/constant/ai_features_type.dart'
    as _i38;
import 'package:flutter/material.dart' as _i37;

abstract class $AppRouter extends _i36.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i36.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    AddNewCertificateRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddNewCertificatePage(),
      );
    },
    AddNewEducationRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddNewEducationPage(),
      );
    },
    AddNewExperienceRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AddNewExperiencePage(),
      );
    },
    AiFeaturesHistoryRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AiFeaturesHistoryPage(),
      );
    },
    AuthGateRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AuthGatePage(),
      );
    },
    AutoGenerationHistoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AutoGenerationHistoryDetailRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.AutoGenerationHistoryDetailPage(
          key: args.key,
          type: args.type,
          id: args.id,
        ),
      );
    },
    BlogDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BlogDetailRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.BlogDetailPage(
          key: args.key,
          blog: args.blog,
        ),
      );
    },
    ChatWithAiRoute.name: (routeData) {
      final args = routeData.argsAs<ChatWithAiRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ChatWithAiPage(
          key: args.key,
          botId: args.botId,
        ),
      );
    },
    ConnectWalletRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ConnectWalletPage(),
      );
    },
    CreateAiCharacterRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.CreateAiCharacterPage(),
      );
    },
    CreateAnAccountRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnAccountRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.CreateAnAccountPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    CreateDigitalProfileRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.CreateDigitalProfilePage(),
      );
    },
    CreateDigitalProfileSuccessRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.CreateDigitalProfileSuccessPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.DashboardPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.EditProfilePage(),
      );
    },
    FeedDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FeedDetailRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.FeedDetailPage(
          key: args.key,
          feed: args.feed,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ForgotPasswordPage(),
      );
    },
    ListCertificateRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ListCertificatePage(),
      );
    },
    ListEducationRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.ListEducationPage(),
      );
    },
    ListExperienceRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.ListExperiencePage(),
      );
    },
    LocalAuthRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.LocalAuthPage(),
      );
    },
    MyAICharacterRoute.name: (routeData) {
      final args = routeData.argsAs<MyAICharacterRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.MyAICharacterPage(
          key: args.key,
          createdCharacterBot: args.createdCharacterBot,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.OnboardingPage(),
      );
    },
    OpenToWorkRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.OpenToWorkPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SignUpPage(),
      );
    },
    SignUpSuccessRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.SignUpSuccessPage(),
      );
    },
    UpdateNewPasswordRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.UpdateNewPasswordPage(),
      );
    },
    VerifyEmailForgotPasswordRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.VerifyEmailForgotPasswordPage(),
      );
    },
    VerifySignUpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifySignUpRouteArgs>();
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.VerifySignUpPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    WriteCoverLetterRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.WriteCoverLetterPage(),
      );
    },
    WriteInterviewQuestionRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.WriteInterviewQuestionPage(),
      );
    },
    WriteProfileIntroductionRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.WriteProfileIntroductionPage(),
      );
    },
    WriteSkillKnowledgeRoute.name: (routeData) {
      return _i36.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i35.WriteSkillKnowledgePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i36.PageRouteInfo<void> {
  const AboutRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddNewCertificatePage]
class AddNewCertificateRoute extends _i36.PageRouteInfo<void> {
  const AddNewCertificateRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AddNewCertificateRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNewCertificateRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddNewEducationPage]
class AddNewEducationRoute extends _i36.PageRouteInfo<void> {
  const AddNewEducationRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AddNewEducationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNewEducationRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AddNewExperiencePage]
class AddNewExperienceRoute extends _i36.PageRouteInfo<void> {
  const AddNewExperienceRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AddNewExperienceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNewExperienceRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AiFeaturesHistoryPage]
class AiFeaturesHistoryRoute extends _i36.PageRouteInfo<void> {
  const AiFeaturesHistoryRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AiFeaturesHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiFeaturesHistoryRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AuthGatePage]
class AuthGateRoute extends _i36.PageRouteInfo<void> {
  const AuthGateRoute({List<_i36.PageRouteInfo>? children})
      : super(
          AuthGateRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthGateRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i7.AutoGenerationHistoryDetailPage]
class AutoGenerationHistoryDetailRoute
    extends _i36.PageRouteInfo<AutoGenerationHistoryDetailRouteArgs> {
  AutoGenerationHistoryDetailRoute({
    _i37.Key? key,
    required _i38.AiFeatureTypes type,
    required int id,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          AutoGenerationHistoryDetailRoute.name,
          args: AutoGenerationHistoryDetailRouteArgs(
            key: key,
            type: type,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'AutoGenerationHistoryDetailRoute';

  static const _i36.PageInfo<AutoGenerationHistoryDetailRouteArgs> page =
      _i36.PageInfo<AutoGenerationHistoryDetailRouteArgs>(name);
}

class AutoGenerationHistoryDetailRouteArgs {
  const AutoGenerationHistoryDetailRouteArgs({
    this.key,
    required this.type,
    required this.id,
  });

  final _i37.Key? key;

  final _i38.AiFeatureTypes type;

  final int id;

  @override
  String toString() {
    return 'AutoGenerationHistoryDetailRouteArgs{key: $key, type: $type, id: $id}';
  }
}

/// generated route for
/// [_i8.BlogDetailPage]
class BlogDetailRoute extends _i36.PageRouteInfo<BlogDetailRouteArgs> {
  BlogDetailRoute({
    _i37.Key? key,
    required _i39.BlogModel blog,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          BlogDetailRoute.name,
          args: BlogDetailRouteArgs(
            key: key,
            blog: blog,
          ),
          initialChildren: children,
        );

  static const String name = 'BlogDetailRoute';

  static const _i36.PageInfo<BlogDetailRouteArgs> page =
      _i36.PageInfo<BlogDetailRouteArgs>(name);
}

class BlogDetailRouteArgs {
  const BlogDetailRouteArgs({
    this.key,
    required this.blog,
  });

  final _i37.Key? key;

  final _i39.BlogModel blog;

  @override
  String toString() {
    return 'BlogDetailRouteArgs{key: $key, blog: $blog}';
  }
}

/// generated route for
/// [_i9.ChatWithAiPage]
class ChatWithAiRoute extends _i36.PageRouteInfo<ChatWithAiRouteArgs> {
  ChatWithAiRoute({
    _i37.Key? key,
    required int botId,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          ChatWithAiRoute.name,
          args: ChatWithAiRouteArgs(
            key: key,
            botId: botId,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatWithAiRoute';

  static const _i36.PageInfo<ChatWithAiRouteArgs> page =
      _i36.PageInfo<ChatWithAiRouteArgs>(name);
}

class ChatWithAiRouteArgs {
  const ChatWithAiRouteArgs({
    this.key,
    required this.botId,
  });

  final _i37.Key? key;

  final int botId;

  @override
  String toString() {
    return 'ChatWithAiRouteArgs{key: $key, botId: $botId}';
  }
}

/// generated route for
/// [_i10.ConnectWalletPage]
class ConnectWalletRoute extends _i36.PageRouteInfo<void> {
  const ConnectWalletRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ConnectWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConnectWalletRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i11.CreateAiCharacterPage]
class CreateAiCharacterRoute extends _i36.PageRouteInfo<void> {
  const CreateAiCharacterRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CreateAiCharacterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAiCharacterRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i12.CreateAnAccountPage]
class CreateAnAccountRoute
    extends _i36.PageRouteInfo<CreateAnAccountRouteArgs> {
  CreateAnAccountRoute({
    _i37.Key? key,
    required String email,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          CreateAnAccountRoute.name,
          args: CreateAnAccountRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateAnAccountRoute';

  static const _i36.PageInfo<CreateAnAccountRouteArgs> page =
      _i36.PageInfo<CreateAnAccountRouteArgs>(name);
}

class CreateAnAccountRouteArgs {
  const CreateAnAccountRouteArgs({
    this.key,
    required this.email,
  });

  final _i37.Key? key;

  final String email;

  @override
  String toString() {
    return 'CreateAnAccountRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i13.CreateDigitalProfilePage]
class CreateDigitalProfileRoute extends _i36.PageRouteInfo<void> {
  const CreateDigitalProfileRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CreateDigitalProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateDigitalProfileRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i14.CreateDigitalProfileSuccessPage]
class CreateDigitalProfileSuccessRoute extends _i36.PageRouteInfo<void> {
  const CreateDigitalProfileSuccessRoute({List<_i36.PageRouteInfo>? children})
      : super(
          CreateDigitalProfileSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateDigitalProfileSuccessRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i15.DashboardPage]
class DashboardRoute extends _i36.PageRouteInfo<void> {
  const DashboardRoute({List<_i36.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i16.EditProfilePage]
class EditProfileRoute extends _i36.PageRouteInfo<void> {
  const EditProfileRoute({List<_i36.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i17.FeedDetailPage]
class FeedDetailRoute extends _i36.PageRouteInfo<FeedDetailRouteArgs> {
  FeedDetailRoute({
    _i37.Key? key,
    required _i40.NewFeedModel feed,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          FeedDetailRoute.name,
          args: FeedDetailRouteArgs(
            key: key,
            feed: feed,
          ),
          initialChildren: children,
        );

  static const String name = 'FeedDetailRoute';

  static const _i36.PageInfo<FeedDetailRouteArgs> page =
      _i36.PageInfo<FeedDetailRouteArgs>(name);
}

class FeedDetailRouteArgs {
  const FeedDetailRouteArgs({
    this.key,
    required this.feed,
  });

  final _i37.Key? key;

  final _i40.NewFeedModel feed;

  @override
  String toString() {
    return 'FeedDetailRouteArgs{key: $key, feed: $feed}';
  }
}

/// generated route for
/// [_i18.ForgotPasswordPage]
class ForgotPasswordRoute extends _i36.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ListCertificatePage]
class ListCertificateRoute extends _i36.PageRouteInfo<void> {
  const ListCertificateRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListCertificateRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListCertificateRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ListEducationPage]
class ListEducationRoute extends _i36.PageRouteInfo<void> {
  const ListEducationRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListEducationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListEducationRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i21.ListExperiencePage]
class ListExperienceRoute extends _i36.PageRouteInfo<void> {
  const ListExperienceRoute({List<_i36.PageRouteInfo>? children})
      : super(
          ListExperienceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListExperienceRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i22.LocalAuthPage]
class LocalAuthRoute extends _i36.PageRouteInfo<void> {
  const LocalAuthRoute({List<_i36.PageRouteInfo>? children})
      : super(
          LocalAuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocalAuthRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i23.MyAICharacterPage]
class MyAICharacterRoute extends _i36.PageRouteInfo<MyAICharacterRouteArgs> {
  MyAICharacterRoute({
    _i37.Key? key,
    required _i41.CreatedCharacterBotModel createdCharacterBot,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          MyAICharacterRoute.name,
          args: MyAICharacterRouteArgs(
            key: key,
            createdCharacterBot: createdCharacterBot,
          ),
          initialChildren: children,
        );

  static const String name = 'MyAICharacterRoute';

  static const _i36.PageInfo<MyAICharacterRouteArgs> page =
      _i36.PageInfo<MyAICharacterRouteArgs>(name);
}

class MyAICharacterRouteArgs {
  const MyAICharacterRouteArgs({
    this.key,
    required this.createdCharacterBot,
  });

  final _i37.Key? key;

  final _i41.CreatedCharacterBotModel createdCharacterBot;

  @override
  String toString() {
    return 'MyAICharacterRouteArgs{key: $key, createdCharacterBot: $createdCharacterBot}';
  }
}

/// generated route for
/// [_i24.OnboardingPage]
class OnboardingRoute extends _i36.PageRouteInfo<void> {
  const OnboardingRoute({List<_i36.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i25.OpenToWorkPage]
class OpenToWorkRoute extends _i36.PageRouteInfo<void> {
  const OpenToWorkRoute({List<_i36.PageRouteInfo>? children})
      : super(
          OpenToWorkRoute.name,
          initialChildren: children,
        );

  static const String name = 'OpenToWorkRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SignInPage]
class SignInRoute extends _i36.PageRouteInfo<void> {
  const SignInRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i27.SignUpPage]
class SignUpRoute extends _i36.PageRouteInfo<void> {
  const SignUpRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i28.SignUpSuccessPage]
class SignUpSuccessRoute extends _i36.PageRouteInfo<void> {
  const SignUpSuccessRoute({List<_i36.PageRouteInfo>? children})
      : super(
          SignUpSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpSuccessRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i29.UpdateNewPasswordPage]
class UpdateNewPasswordRoute extends _i36.PageRouteInfo<void> {
  const UpdateNewPasswordRoute({List<_i36.PageRouteInfo>? children})
      : super(
          UpdateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateNewPasswordRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i30.VerifyEmailForgotPasswordPage]
class VerifyEmailForgotPasswordRoute extends _i36.PageRouteInfo<void> {
  const VerifyEmailForgotPasswordRoute({List<_i36.PageRouteInfo>? children})
      : super(
          VerifyEmailForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailForgotPasswordRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i31.VerifySignUpPage]
class VerifySignUpRoute extends _i36.PageRouteInfo<VerifySignUpRouteArgs> {
  VerifySignUpRoute({
    _i37.Key? key,
    required String email,
    List<_i36.PageRouteInfo>? children,
  }) : super(
          VerifySignUpRoute.name,
          args: VerifySignUpRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifySignUpRoute';

  static const _i36.PageInfo<VerifySignUpRouteArgs> page =
      _i36.PageInfo<VerifySignUpRouteArgs>(name);
}

class VerifySignUpRouteArgs {
  const VerifySignUpRouteArgs({
    this.key,
    required this.email,
  });

  final _i37.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifySignUpRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i32.WriteCoverLetterPage]
class WriteCoverLetterRoute extends _i36.PageRouteInfo<void> {
  const WriteCoverLetterRoute({List<_i36.PageRouteInfo>? children})
      : super(
          WriteCoverLetterRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteCoverLetterRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i33.WriteInterviewQuestionPage]
class WriteInterviewQuestionRoute extends _i36.PageRouteInfo<void> {
  const WriteInterviewQuestionRoute({List<_i36.PageRouteInfo>? children})
      : super(
          WriteInterviewQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteInterviewQuestionRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i34.WriteProfileIntroductionPage]
class WriteProfileIntroductionRoute extends _i36.PageRouteInfo<void> {
  const WriteProfileIntroductionRoute({List<_i36.PageRouteInfo>? children})
      : super(
          WriteProfileIntroductionRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteProfileIntroductionRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}

/// generated route for
/// [_i35.WriteSkillKnowledgePage]
class WriteSkillKnowledgeRoute extends _i36.PageRouteInfo<void> {
  const WriteSkillKnowledgeRoute({List<_i36.PageRouteInfo>? children})
      : super(
          WriteSkillKnowledgeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteSkillKnowledgeRoute';

  static const _i36.PageInfo<void> page = _i36.PageInfo<void>(name);
}
