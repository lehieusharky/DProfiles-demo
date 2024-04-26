import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/seperate_profile.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DProfileComponent extends StatefulWidget {
  const DProfileComponent({Key? key}) : super(key: key);

  @override
  State<DProfileComponent> createState() => _DProfileComponentState();
}

class _DProfileComponentState extends State<DProfileComponent> {
  bool? _isAvailable;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, bool?>(
      selector: (state) {
        if (state is ProfileCheckDigitalProfileAvailableSuccess) {
          _isAvailable = state.status;
        }

        return _isAvailable;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SeparatedProfile(),
            Padding(
              padding: context.padding(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'dProfile',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.bold)
                        .bodyLarge,
                  ),
                  if (_isAvailable != null)
                    _buildDigitalProfileButton(_isAvailable!),
                ],
              ),
            ),
            const SeparatedProfile(),
          ],
        );
      },
    );
  }

  void _onPressed(bool status) {
    if (status) {
      context.router.push(const MyDigitalProfileRoute());
    } else {
      context.router.push(const CreateDigitalProfileRoute());
    }
  }

  Widget _buildDigitalProfileButton(bool status) {
    return InkWell(
      onTap: () => _onPressed(status),
      child: Container(
        padding: context.padding(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: colorScheme(context).outlineVariant.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Text(
              status ? 'View Digital Profile' : 'Create dProfile',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .bodyMedium,
            ),
            context.sizedBox(width: 5),
            Icon(
              IconsaxBold.personalcard,
              color: colorScheme(context).primary,
            ),
          ],
        ),
      ),
    );
  }
}
