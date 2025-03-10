import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Fruit_Item.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/item_detils/product_item_detils_view.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';

class FruitGradeView extends StatelessWidget {
  const FruitGradeView({super.key, required this.products});
  final List<ProductEntitey> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 163 / 214,
      ),
      itemCount: products.length,
      itemBuilder: (contex, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) =>
                        ProductItemDetilsView(product: products[index]),
              ),
            );
          },
          child: FruitItem(product: products[index]),
        );
      },
    );
  }
}
