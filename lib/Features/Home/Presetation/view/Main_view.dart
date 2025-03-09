import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/custom_bottomNavigatior_bar.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/home_view.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/main_view_body.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/product_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'Main_View';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomnavigatiorBar(
        onItemTapped: (int value) {
          currentViewIndex = value;
          setState(() {});
        },
      ),
      body: SafeArea(child: MainViewBody(currentViewIndex: currentViewIndex)),
    );
  }
}
