import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/helper_function/on_genrate_route.dart';
import 'package:real_e_commerce/Features/Splash/presention/view/Spalsh_View.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: OnGenrateRoutes,
      initialRoute: SpalshView.route_name,
    );
  }
}
