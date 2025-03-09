import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Features/Best_selling_fruits/Preseatiaion/view/Best_Selling_view.dart';

class productviewheader extends StatelessWidget {
  const productviewheader({super.key, required this.productcount});
  final int productcount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(' $productcount منتجات', style: TextStyles.bold16),
        SvgPicture.asset(Assets.assetsSvgArrowSwapHorizontal),
      ],
    );
  }
}
