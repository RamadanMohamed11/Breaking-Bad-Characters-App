import 'package:breaking_bad_chars/core/utils/app_colors.dart';
import 'package:breaking_bad_chars/features/home/presentation/view_model/cubit/all_characters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCharactersCubit, AllCharactersState>(
      builder: (context, state) {
        if (state is AllCharactersLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AllCharactersFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is AllCharactersSuccess) {
          return GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (_, index) {
              return GridTile(
                footer: Container(
                  margin: EdgeInsets.all(8),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    color: Colors.black54,
                  ),
                  child: Text(
                    state.characters[index].fullName,
                    style: const TextStyle(
                      color: AppColors.kWhiteColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    border: Border.all(
                      color: AppColors.kWhiteColor,
                      width: 2.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.network(
                      state.characters[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
