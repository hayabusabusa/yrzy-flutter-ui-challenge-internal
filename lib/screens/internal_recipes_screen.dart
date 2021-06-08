import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/stub.dart';
import 'package:ui_challenge_internal/widgets/widgets.dart';

class InternalRecipesScreen extends StatelessWidget {
  final recipes = Stub.recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('レシピ一覧'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 8,
        ), 
        itemCount: recipes.length,
        itemBuilder: (_, index) {
          final recipe = recipes[index];
          return InternalRecipesCell(title: recipe.name, imageURL: recipe.imageURL);
        },
      ),
    );
  }
}
