import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/item_detils/widgets/Product_Item_Detils_View_body.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';

class ProductItemDetilsView extends StatelessWidget {
  const ProductItemDetilsView({super.key, required this.product});
  // static const String routeName = 'ProductItemDetilsView';
  final ProductEntitey product;
  @override
  Widget build(BuildContext context) {
    // final product =
    //     ModalRoute.of(context)!.settings.arguments as ProductEntitey;
    // if (product is! ProductEntitey) {
    //   return const Scaffold(
    //     body: Center(child: Text("حدث خطأ: لم يتم استلام بيانات المنتج")),
    //   );
    // }
    return Scaffold(
      body: SafeArea(child: ProductItemDetilsViewBody(product: product)),
    );
  }
}
