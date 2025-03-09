import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/Repos/Product_Repo.dart';
import 'package:real_e_commerce/Core/Services/get_it_Service.dart';
import 'package:real_e_commerce/Core/cubits/Products_cubit/products_cubit.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Home_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<ProductRepo>()),
      child: HomeViewBody(),
    );
  }
}
