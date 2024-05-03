import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/auth_gate/auth_gate_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

@RoutePage()
// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const Text('Suppose this is an app in your Phone\'s home page',
//                 style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
//             OpenContainer(
//               closedBuilder: (_, openContainer) {
//                 return const SizedBox(
//                   height: 80,
//                   width: 80,
//                   child: Center(
//                     child: Text(
//                       'App Logo',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 );
//               },
//               openColor: const Color(0xff412EEF),
//               closedElevation: 20,
//               closedShape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               transitionDuration: const Duration(milliseconds: 700),
//               openBuilder: (_, closeContainer) {
//                 return SecondClass();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            _onComplete();
            // Navigator.of(context).pushReplacement(
            //   PageTransition(
            //       type: PageTransitionType.bottomToTop,
            //       child: const AuthGatePage()),
            // );
            Timer(
              const Duration(milliseconds: 300),
              () {
                scaleController.reset();
              },
            );
          }
        },
      );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 12).animate(scaleController);

    Timer(const Duration(seconds: 2), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  void _onComplete() => context.router.replace(const AuthGateRoute());

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).primary,
      body: Center(
        child: DefaultTextStyle(
          style: AppFont()
              .fontTheme(context,
                  color: MyColor.getWhite, weight: FontWeight.bold)
              .titleLarge!,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'dProfiles',
                speed: const Duration(milliseconds: 150),
              ),
            ],
            isRepeatingAnimation: false,
            repeatForever: false,
            displayFullTextOnTap: false,
          ),
        ),
      ),
    );
  }
}
