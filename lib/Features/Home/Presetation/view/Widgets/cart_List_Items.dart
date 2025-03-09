import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/cart_Item.dart';

class CartListItems extends StatelessWidget {
  const CartListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, Index) {
        return const CartItem();
      },
    );
  }
}
