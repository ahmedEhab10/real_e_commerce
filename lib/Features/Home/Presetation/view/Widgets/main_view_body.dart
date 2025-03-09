import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Car_view.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/home_view.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/product_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentViewIndex});
  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [HomeView(), ProductView(), CarView()],
    );
  }
}
