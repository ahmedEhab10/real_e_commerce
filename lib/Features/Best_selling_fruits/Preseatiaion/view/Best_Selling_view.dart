import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Notification_icon.dart';
import 'package:real_e_commerce/Features/Best_selling_fruits/Preseatiaion/view/Widgets/Best_Selling_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = 'BestSellingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Notification_icon(),
          ),
        ],
        backgroundColor: Colors.transparent,
        title: const Text(
          'الأكثر مبيعًا',
          textAlign: TextAlign.center,
          style: TextStyles.bold19,
        ),
      ),
      body: SafeArea(child: BestSellingBody()),
    );
  }
}
