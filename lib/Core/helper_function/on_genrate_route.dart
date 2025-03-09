import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/item_detils/product_item_detils_view.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Login_view.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/SignUp_view.dart';
import 'package:real_e_commerce/Features/Best_selling_fruits/Preseatiaion/view/Best_Selling_view.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Main_view.dart';
import 'package:real_e_commerce/Features/On_Boarding/Presention/View/0n_Boarding_View.dart';
import 'package:real_e_commerce/Features/Splash/presention/view/Spalsh_View.dart';

Route<dynamic>? OnGenrateRoutes(RouteSettings setting) {
  switch (setting.name) {
    case SpalshView.route_name:
      return MaterialPageRoute(builder: (context) => const SpalshView());
    case onBoardingView.routename:
      return MaterialPageRoute(builder: (context) => const onBoardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());

    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());

    // case ProductItemDetilsView.routeName:
    //   final product = setting.arguments as ProductEntitey?;
    //   if (product == null) {
    //     return MaterialPageRoute(
    //       builder:
    //           (context) => const Scaffold(
    //             body: Center(
    //               child: Text("حدث خطأ: لم يتم استقبال بيانات المنتج"),
    //             ),
    //           ),
    //     );
    //   }

    //   return MaterialPageRoute(
    //     builder: (context) => ProductItemDetilsView(product: product),
    //   );

    default:
      MaterialPageRoute(builder: (context) => const Scaffold());
  }
  return null;
}
