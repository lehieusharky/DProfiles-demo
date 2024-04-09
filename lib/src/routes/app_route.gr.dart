// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/create_character_bot_model.dart'
    as _i29;
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/pages/create_ai_character_page.dart'
    as _i6;
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/my_ai_character/presentation/pages/my_ai_character_page.dart'
    as _i13;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/ai_features_history_page.dart'
    as _i2;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_cover_letter/presentation/pages/write_cover_letter_page.dart'
    as _i22;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_interview_question/presentation/pages/write_interview_question_page.dart'
    as _i23;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_profile_introduction/presentation/pages/write_profile_introduction_page.dart'
    as _i24;
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_skill_knowledge/presentation/pages/write_skill_knowledge.dart'
    as _i25;
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/pages/create_digital_profile_page.dart'
    as _i8;
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/pages/create_dprofile_success_page.dart'
    as _i9;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/auth_gate/auth_gate_page.dart'
    as _i3;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/connect_wallet/presentation/connect_wallet_page.dart'
    as _i5;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/forgot_password_page.dart'
    as _i12;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/update_new_password_page.dart'
    as _i19;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/verify_email_forgot_password.dart'
    as _i20;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/page/sign_in_page.dart'
    as _i16;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/create_an_account_page.dart'
    as _i7;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_page.dart'
    as _i17;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_success_page.dart'
    as _i18;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/verify_sign_up_page.dart'
    as _i21;
import 'package:demo_dprofiles/src/features/blogs/data/models/blog_model.dart'
    as _i28;
import 'package:demo_dprofiles/src/features/blogs/presentation/blog_detail_page.dart'
    as _i4;
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_page.dart'
    as _i10;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/about_page.dart'
    as _i1;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/edit_profile_page.dart'
    as _i11;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/open_to_work_page.dart'
    as _i15;
import 'package:demo_dprofiles/src/features/onboarding/presentation/page/onboarding_page.dart'
    as _i14;
import 'package:flutter/material.dart' as _i27;

abstract class $AppRouter extends _i26.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    AiFeaturesHistoryRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AiFeaturesHistoryPage(),
      );
    },
    AuthGateRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthGatePage(),
      );
    },
    BlogDetailRoute.name: (routeData) {
      final args = routeData.argsAs<BlogDetailRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BlogDetailPage(
          key: args.key,
          blog: args.blog,
        ),
      );
    },
    ConnectWalletRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ConnectWalletPage(),
      );
    },
    CreateAiCharacterRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CreateAiCharacterPage(),
      );
    },
    CreateAnAccountRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnAccountRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.CreateAnAccountPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    CreateDigitalProfileRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CreateDigitalProfilePage(),
      );
    },
    CreateDigitalProfileSuccessRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreateDigitalProfileSuccessPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DashboardPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.EditProfilePage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ForgotPasswordPage(),
      );
    },
    MyAICharacterRoute.name: (routeData) {
      final args = routeData.argsAs<MyAICharacterRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.MyAICharacterPage(
          key: args.key,
          createdCharacterBot: args.createdCharacterBot,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.OnboardingPage(),
      );
    },
    OpenToWorkRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.OpenToWorkPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SignUpPage(),
      );
    },
    SignUpSuccessRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SignUpSuccessPage(),
      );
    },
    UpdateNewPasswordRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.UpdateNewPasswordPage(),
      );
    },
    VerifyEmailForgotPasswordRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.VerifyEmailForgotPasswordPage(),
      );
    },
    VerifySignUpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifySignUpRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.VerifySignUpPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    WriteCoverLetterRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.WriteCoverLetterPage(),
      );
    },
    WriteInterviewQuestionRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.WriteInterviewQuestionPage(),
      );
    },
    WriteProfileIntroductionRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.WriteProfileIntroductionPage(),
      );
    },
    WriteSkillKnowledgeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.WriteSkillKnowledgePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i26.PageRouteInfo<void> {
  const AboutRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AiFeaturesHistoryPage]
class AiFeaturesHistoryRoute extends _i26.PageRouteInfo<void> {
  const AiFeaturesHistoryRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AiFeaturesHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiFeaturesHistoryRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthGatePage]
class AuthGateRoute extends _i26.PageRouteInfo<void> {
  const AuthGateRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AuthGateRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthGateRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BlogDetailPage]
class BlogDetailRoute extends _i26.PageRouteInfo<BlogDetailRouteArgs> {
  BlogDetailRoute({
    _i27.Key? key,
    required _i28.BlogModel blog,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          BlogDetailRoute.name,
          args: BlogDetailRouteArgs(
            key: key,
            blog: blog,
          ),
          initialChildren: children,
        );

  static const String name = 'BlogDetailRoute';

  static const _i26.PageInfo<BlogDetailRouteArgs> page =
      _i26.PageInfo<BlogDetailRouteArgs>(name);
}

class BlogDetailRouteArgs {
  const BlogDetailRouteArgs({
    this.key,
    required this.blog,
  });

  final _i27.Key? key;

  final _i28.BlogModel blog;

  @override
  String toString() {
    return 'BlogDetailRouteArgs{key: $key, blog: $blog}';
  }
}

/// generated route for
/// [_i5.ConnectWalletPage]
class ConnectWalletRoute extends _i26.PageRouteInfo<void> {
  const ConnectWalletRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ConnectWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConnectWalletRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CreateAiCharacterPage]
class CreateAiCharacterRoute extends _i26.PageRouteInfo<void> {
  const CreateAiCharacterRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CreateAiCharacterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAiCharacterRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CreateAnAccountPage]
class CreateAnAccountRoute
    extends _i26.PageRouteInfo<CreateAnAccountRouteArgs> {
  CreateAnAccountRoute({
    _i27.Key? key,
    required String email,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          CreateAnAccountRoute.name,
          args: CreateAnAccountRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateAnAccountRoute';

  static const _i26.PageInfo<CreateAnAccountRouteArgs> page =
      _i26.PageInfo<CreateAnAccountRouteArgs>(name);
}

class CreateAnAccountRouteArgs {
  const CreateAnAccountRouteArgs({
    this.key,
    required this.email,
  });

  final _i27.Key? key;

  final String email;

  @override
  String toString() {
    return 'CreateAnAccountRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i8.CreateDigitalProfilePage]
class CreateDigitalProfileRoute extends _i26.PageRouteInfo<void> {
  const CreateDigitalProfileRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CreateDigitalProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateDigitalProfileRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CreateDigitalProfileSuccessPage]
class CreateDigitalProfileSuccessRoute extends _i26.PageRouteInfo<void> {
  const CreateDigitalProfileSuccessRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CreateDigitalProfileSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateDigitalProfileSuccessRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i10.DashboardPage]
class DashboardRoute extends _i26.PageRouteInfo<void> {
  const DashboardRoute({List<_i26.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EditProfilePage]
class EditProfileRoute extends _i26.PageRouteInfo<void> {
  const EditProfileRoute({List<_i26.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ForgotPasswordPage]
class ForgotPasswordRoute extends _i26.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MyAICharacterPage]
class MyAICharacterRoute extends _i26.PageRouteInfo<MyAICharacterRouteArgs> {
  MyAICharacterRoute({
    _i27.Key? key,
    required _i29.CreatedCharacterBotModel createdCharacterBot,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          MyAICharacterRoute.name,
          args: MyAICharacterRouteArgs(
            key: key,
            createdCharacterBot: createdCharacterBot,
          ),
          initialChildren: children,
        );

  static const String name = 'MyAICharacterRoute';

  static const _i26.PageInfo<MyAICharacterRouteArgs> page =
      _i26.PageInfo<MyAICharacterRouteArgs>(name);
}

class MyAICharacterRouteArgs {
  const MyAICharacterRouteArgs({
    this.key,
    required this.createdCharacterBot,
  });

  final _i27.Key? key;

  final _i29.CreatedCharacterBotModel createdCharacterBot;

  @override
  String toString() {
    return 'MyAICharacterRouteArgs{key: $key, createdCharacterBot: $createdCharacterBot}';
  }
}

/// generated route for
/// [_i14.OnboardingPage]
class OnboardingRoute extends _i26.PageRouteInfo<void> {
  const OnboardingRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i15.OpenToWorkPage]
class OpenToWorkRoute extends _i26.PageRouteInfo<void> {
  const OpenToWorkRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OpenToWorkRoute.name,
          initialChildren: children,
        );

  static const String name = 'OpenToWorkRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SignInPage]
class SignInRoute extends _i26.PageRouteInfo<void> {
  const SignInRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SignUpPage]
class SignUpRoute extends _i26.PageRouteInfo<void> {
  const SignUpRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SignUpSuccessPage]
class SignUpSuccessRoute extends _i26.PageRouteInfo<void> {
  const SignUpSuccessRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignUpSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpSuccessRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i19.UpdateNewPasswordPage]
class UpdateNewPasswordRoute extends _i26.PageRouteInfo<void> {
  const UpdateNewPasswordRoute({List<_i26.PageRouteInfo>? children})
      : super(
          UpdateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateNewPasswordRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i20.VerifyEmailForgotPasswordPage]
class VerifyEmailForgotPasswordRoute extends _i26.PageRouteInfo<void> {
  const VerifyEmailForgotPasswordRoute({List<_i26.PageRouteInfo>? children})
      : super(
          VerifyEmailForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailForgotPasswordRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i21.VerifySignUpPage]
class VerifySignUpRoute extends _i26.PageRouteInfo<VerifySignUpRouteArgs> {
  VerifySignUpRoute({
    _i27.Key? key,
    required String email,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          VerifySignUpRoute.name,
          args: VerifySignUpRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifySignUpRoute';

  static const _i26.PageInfo<VerifySignUpRouteArgs> page =
      _i26.PageInfo<VerifySignUpRouteArgs>(name);
}

class VerifySignUpRouteArgs {
  const VerifySignUpRouteArgs({
    this.key,
    required this.email,
  });

  final _i27.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifySignUpRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i22.WriteCoverLetterPage]
class WriteCoverLetterRoute extends _i26.PageRouteInfo<void> {
  const WriteCoverLetterRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WriteCoverLetterRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteCoverLetterRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i23.WriteInterviewQuestionPage]
class WriteInterviewQuestionRoute extends _i26.PageRouteInfo<void> {
  const WriteInterviewQuestionRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WriteInterviewQuestionRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteInterviewQuestionRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i24.WriteProfileIntroductionPage]
class WriteProfileIntroductionRoute extends _i26.PageRouteInfo<void> {
  const WriteProfileIntroductionRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WriteProfileIntroductionRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteProfileIntroductionRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i25.WriteSkillKnowledgePage]
class WriteSkillKnowledgeRoute extends _i26.PageRouteInfo<void> {
  const WriteSkillKnowledgeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WriteSkillKnowledgeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteSkillKnowledgeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}
