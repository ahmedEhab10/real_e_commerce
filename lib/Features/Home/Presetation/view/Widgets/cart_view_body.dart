import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Cart_view_Header.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/cart_Item.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/cart_List_Items.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                CartHeader(),
                SizedBox(height: 16),
              ],
            ),
          ),
          CartListItems(),
        ],
      ),
    );
  }
}
