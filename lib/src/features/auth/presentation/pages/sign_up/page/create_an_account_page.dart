import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_up/widgets/create_account_form.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_title.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateAnAccountPage extends StatefulWidget {
  final String email;

  const CreateAnAccountPage({Key? key, required this.email}) : super(key: key);

  @override
  State<CreateAnAccountPage> createState() => _CreateAnAccountPageState();
}

class _CreateAnAccountPageState extends State<CreateAnAccountPage> {
  bool _isAgreePolicy = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(context),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthCreateAnAccountSuccess) {
            Navigator.pop(context);
            context.router.replace(const SignUpSuccessRoute());
          }

          if (state is AuthLoading) {
            showLoadingDialog(context);
          }

          if (state is AuthError) {
            Navigator.pop(context);
            showErrorDialog(
              context,
              title: state.title,
              description: state.message,
            );
          }
        },
        builder: (context, state) {
          return MyScaffold(
            horizontalMargin: 32,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  AuthLogo(),
                  AuthTitle(title: appLocal(context).createAnAccount),
                  Padding(
                    padding: context.padding(top: 32, bottom: 12),
                    child: const MyDivider(),
                  ),
                  CreateAccountForm(
                    email: widget.email,
                    isAgree: _isAgreePolicy,
                    onChanged: (value) => setState(() {
                      _isAgreePolicy = !_isAgreePolicy;
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
