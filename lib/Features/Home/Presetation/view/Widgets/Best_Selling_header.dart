import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('الأكثر مبيعًا', style: TextStyles.bold16),
        Text('المزيد', style: TextStyles.regular13),
      ],
    );
  }
}
