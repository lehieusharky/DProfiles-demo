import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/auth_gate', initial: true, page: AuthGateRoute.page),
        AutoRoute(path: '/local_auth', page: LocalAuthRoute.page),
        AutoRoute(path: '/onboarding', page: OnboardingRoute.page),
        AutoRoute(path: '/dashboard', page: DashboardRoute.page),
        AutoRoute(path: '/connect_wallet', page: ConnectWalletRoute.page),
        AutoRoute(path: '/sign_in', page: SignInRoute.page),
        AutoRoute(path: '/sign_up', page: SignUpRoute.page),
        AutoRoute(path: '/forgot_password', page: ForgotPasswordRoute.page),
        AutoRoute(path: '/verify_email_sign_up', page: VerifySignUpRoute.page),
        AutoRoute(path: '/create_an_account', page: CreateAnAccountRoute.page),
        AutoRoute(path: '/sign_up_success', page: SignUpSuccessRoute.page),
        AutoRoute(path: '/edit_profile', page: EditProfileRoute.page),
        AutoRoute(path: '/open_to_work', page: OpenToWorkRoute.page),
        AutoRoute(path: '/about_profile', page: AboutRoute.page),
        AutoRoute(
            path: '/verify_email_forgot_password',
            page: VerifyEmailForgotPasswordRoute.page),
        AutoRoute(
            path: '/update_new_password', page: UpdateNewPasswordRoute.page),
        AutoRoute(
            path: '/create_digital_profile',
            page: CreateDigitalProfileRoute.page),
        AutoRoute(
            path: '/update_digital_profile_success',
            page: CreateDigitalProfileSuccessRoute.page),
        AutoRoute(
            path: '/write_profile_introduction',
            page: WriteProfileIntroductionRoute.page),
        AutoRoute(
            path: '/write_cover_letter', page: WriteCoverLetterRoute.page),
        AutoRoute(
            path: '/write_interview_question',
            page: WriteInterviewQuestionRoute.page),
        AutoRoute(
            path: '/write_skill_knowledge',
            page: WriteSkillKnowledgeRoute.page),
        AutoRoute(
            path: '/create_ai_character', page: CreateAiCharacterRoute.page),
        AutoRoute(path: '/my_ai_character', page: MyAICharacterRoute.page),
        AutoRoute(path: '/blog_detail', page: BlogDetailRoute.page),
        AutoRoute(
            path: '/ai_features_history', page: AiFeaturesHistoryRoute.page),
        AutoRoute(
            path: '/auto_generation_history_detail',
            page: AutoGenerationHistoryDetailRoute.page),
        AutoRoute(path: '/add_new_education', page: AddNewEducationRoute.page),
        AutoRoute(
            path: '/add_new_certificate', page: AddNewCertificateRoute.page),
        AutoRoute(
            path: '/add_new_experience', page: AddNewExperienceRoute.page),
        AutoRoute(path: '/list_education', page: ListEducationRoute.page),
        AutoRoute(path: '/list_certificate', page: ListCertificateRoute.page),
        AutoRoute(
            path: '/list_experience', page: ListExperienceRoute.page),
      ];
}
