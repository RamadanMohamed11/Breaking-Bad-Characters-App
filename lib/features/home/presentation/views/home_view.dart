import 'package:breaking_bad_chars/core/utils/app_colors.dart';
import 'package:breaking_bad_chars/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game of Thrones'),
        centerTitle: true,
        backgroundColor: AppColors.kYellowColor,
        elevation: 0,
      ),
      body: HomeViewBody(),
    );
  }
}
