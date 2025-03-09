import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';

class ProductItemDetilsViewBody extends StatelessWidget {
  const ProductItemDetilsViewBody({super.key, required this.product});
  final ProductEntitey product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(product.name),
        Text("${product.price}"),
        Text(product.description),
      ],
    );
  }
}
