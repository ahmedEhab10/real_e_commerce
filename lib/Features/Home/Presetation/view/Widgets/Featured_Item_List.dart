import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/featured_item.dart';

class FeaturedItemList extends StatelessWidget {
  const FeaturedItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedItem(),
          );
        }),
      ),
    );
  }
}
