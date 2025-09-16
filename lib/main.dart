import 'package:breaking_bad_chars/core/utils/app_colors.dart';
import 'package:breaking_bad_chars/core/utils/app_router.dart';
import 'package:breaking_bad_chars/core/utils/service_locator.dart';
import 'package:breaking_bad_chars/features/home/data/repos/home_repo.dart';
import 'package:breaking_bad_chars/features/home/presentation/view_model/cubit/all_characters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BreakingBadApp());
}

class BreakingBadApp extends StatelessWidget {
  const BreakingBadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AllCharactersCubit(getIt<HomeRepo>())..fetchAllCharacters(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.kGreyColor),
        routerConfig: AppRouter.routes,
      ),
    );
  }
}
