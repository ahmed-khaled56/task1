import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/favorite_screen_body.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/favourite_lowerBar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: FavoriteScreenBody()),

      bottomNavigationBar: FavouriteLowerbar(),
    );
  }
}
