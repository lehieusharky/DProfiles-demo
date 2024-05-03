part of 'import_public_profile_page.dart';

@RoutePage()
class PublicProfilePage extends StatelessWidget {
  final String userName;
  const PublicProfilePage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<PublicProfileBloc>()
        ..add(PublicProfileGetBanner(userName))
        ..add(PublicProfileGetBasicInfo(userName))
        ..add(PublicProfileGetSkills(userName))
        ..add(PublicProfileGetLanguages(userName))
        ..add(PublicProfileGetExperiences(userName))
        ..add(PublicProfileGetEducation(userName))
        ..add(PublicProfileGetCertificates(userName)),
      child: MyScaffold(
        topPadding: 0,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AvatarPublicProfile(),
              const HeaderPublicProfile(),
              const SeparatedProfile(),
              const PublicSkillsComponent(),
              const SeparatedProfile(),
              const PublicLanguagesComponent(),
              const SeparatedProfile(),
              const PublicExperienceComponent(),
              const SeparatedProfile(),
              const PublicEducationComponent(),
              const SeparatedProfile(),
              const PublicCertificateComponent(),
              context.sizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
