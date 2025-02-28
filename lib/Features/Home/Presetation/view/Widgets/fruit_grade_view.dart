import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Fruit_Item.dart';

class FruitGradeView extends StatelessWidget {
  const FruitGradeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 163 / 214,
      ),
      itemBuilder: (contex, index) {
        return FruitItem();
      },
    );
  }
}
