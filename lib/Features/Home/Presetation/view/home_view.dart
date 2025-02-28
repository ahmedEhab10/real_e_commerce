import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/custom_bottomNavigatior_bar.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomnavigatiorBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
