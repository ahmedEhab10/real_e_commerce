import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/Repos/Product_Repo.dart';
import 'package:real_e_commerce/Core/Services/get_it_Service.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Notification_icon.dart';
import 'package:real_e_commerce/Core/cubits/Products_cubit/products_cubit.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

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
          ' المنتجات',
          textAlign: TextAlign.center,
          style: TextStyles.bold19,
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ProductsCubit(getIt.get<ProductRepo>()),
          child: const ProductViewBody(),
        ),
      ),
    );
  }
}
