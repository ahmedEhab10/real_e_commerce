import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Notification_icon.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/cart_view_body.dart';

class CarView extends StatelessWidget {
  const CarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Notification_icon(),
          ),
        ],
        backgroundColor: Colors.transparent,
        title: const Text(
          ' السلة',
          textAlign: TextAlign.center,
          style: TextStyles.bold19,
        ),
      ),
      body: SafeArea(child: CartViewBody()),
    );
  }
}
