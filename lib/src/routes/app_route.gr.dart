// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/pages/create_digital_profile_page.dart'
    as _i4;
import 'package:demo_dprofiles/src/features/AI/write_profile/pages/write_profile_page.dart'
    as _i16;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/connect_wallet/presentation/connect_wallet_page.dart'
    as _i2;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/forgot_password_page.dart'
    as _i7;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/update_new_password_page.dart'
    as _i13;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/forgot_password/pages/verify_email_forgot_password.dart'
    as _i14;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/page/sign_in_page.dart'
    as _i10;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/create_an_account_page.dart'
    as _i3;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_page.dart'
    as _i11;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/sign_up_success_page.dart'
    as _i12;
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/page/verify_sign_up_page.dart'
    as _i15;
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_page.dart'
    as _i5;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/about_page.dart'
    as _i1;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/edit_profile_page.dart'
    as _i6;
import 'package:demo_dprofiles/src/features/edit_profile/presentation/pages/open_to_work_page.dart'
    as _i9;
import 'package:demo_dprofiles/src/features/onboarding/presentation/page/onboarding_page.dart'
    as _i8;
import 'package:flutter/material.dart' as _i18;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    ConnectWalletRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ConnectWalletPage(),
      );
    },
    CreateAnAccountRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAnAccountRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CreateAnAccountPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    CreateDigitalProfileRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CreateDigitalProfilePage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EditProfilePage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ForgotPasswordPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnboardingPage(),
      );
    },
    OpenToWorkRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OpenToWorkPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SignUpPage(),
      );
    },
    SignUpSuccessRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SignUpSuccessPage(),
      );
    },
    UpdateNewPasswordRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.UpdateNewPasswordPage(),
      );
    },
    VerifyEmailForgotPasswordRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.VerifyEmailForgotPasswordPage(),
      );
    },
    VerifySignUpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifySignUpRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.VerifySignUpPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    WriteProfileRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.WriteProfilePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i17.PageRouteInfo<void> {
  const AboutRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ConnectWalletPage]
class ConnectWalletRoute extends _i17.PageRouteInfo<void> {
  const ConnectWalletRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ConnectWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConnectWalletRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateAnAccountPage]
class CreateAnAccountRoute
    extends _i17.PageRouteInfo<CreateAnAccountRouteArgs> {
  CreateAnAccountRoute({
    _i18.Key? key,
    required String email,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          CreateAnAccountRoute.name,
          args: CreateAnAccountRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateAnAccountRoute';

  static const _i17.PageInfo<CreateAnAccountRouteArgs> page =
      _i17.PageInfo<CreateAnAccountRouteArgs>(name);
}

class CreateAnAccountRouteArgs {
  const CreateAnAccountRouteArgs({
    this.key,
    required this.email,
  });

  final _i18.Key? key;

  final String email;

  @override
  String toString() {
    return 'CreateAnAccountRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i4.CreateDigitalProfilePage]
class CreateDigitalProfileRoute extends _i17.PageRouteInfo<void> {
  const CreateDigitalProfileRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CreateDigitalProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateDigitalProfileRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardRoute extends _i17.PageRouteInfo<void> {
  const DashboardRoute({List<_i17.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.EditProfilePage]
class EditProfileRoute extends _i17.PageRouteInfo<void> {
  const EditProfileRoute({List<_i17.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ForgotPasswordPage]
class ForgotPasswordRoute extends _i17.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnboardingPage]
class OnboardingRoute extends _i17.PageRouteInfo<void> {
  const OnboardingRoute({List<_i17.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OpenToWorkPage]
class OpenToWorkRoute extends _i17.PageRouteInfo<void> {
  const OpenToWorkRoute({List<_i17.PageRouteInfo>? children})
      : super(
          OpenToWorkRoute.name,
          initialChildren: children,
        );

  static const String name = 'OpenToWorkRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignInPage]
class SignInRoute extends _i17.PageRouteInfo<void> {
  const SignInRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SignUpPage]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SignUpSuccessPage]
class SignUpSuccessRoute extends _i17.PageRouteInfo<void> {
  const SignUpSuccessRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SignUpSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpSuccessRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UpdateNewPasswordPage]
class UpdateNewPasswordRoute extends _i17.PageRouteInfo<void> {
  const UpdateNewPasswordRoute({List<_i17.PageRouteInfo>? children})
      : super(
          UpdateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateNewPasswordRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.VerifyEmailForgotPasswordPage]
class VerifyEmailForgotPasswordRoute extends _i17.PageRouteInfo<void> {
  const VerifyEmailForgotPasswordRoute({List<_i17.PageRouteInfo>? children})
      : super(
          VerifyEmailForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailForgotPasswordRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i15.VerifySignUpPage]
class VerifySignUpRoute extends _i17.PageRouteInfo<VerifySignUpRouteArgs> {
  VerifySignUpRoute({
    _i18.Key? key,
    required String email,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          VerifySignUpRoute.name,
          args: VerifySignUpRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifySignUpRoute';

  static const _i17.PageInfo<VerifySignUpRouteArgs> page =
      _i17.PageInfo<VerifySignUpRouteArgs>(name);
}

class VerifySignUpRouteArgs {
  const VerifySignUpRouteArgs({
    this.key,
    required this.email,
  });

  final _i18.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifySignUpRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i16.WriteProfilePage]
class WriteProfileRoute extends _i17.PageRouteInfo<void> {
  const WriteProfileRoute({List<_i17.PageRouteInfo>? children})
      : super(
          WriteProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'WriteProfileRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
