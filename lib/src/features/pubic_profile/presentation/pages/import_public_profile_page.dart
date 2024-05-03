import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/seperate_profile.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/pubic_languages.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_avatar.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_certificate_component.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_education_component.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_experience_component.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_header.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_skills.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';


part 'public_profile_page.dart';