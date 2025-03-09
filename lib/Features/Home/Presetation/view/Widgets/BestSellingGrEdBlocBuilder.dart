import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/cubits/Products_cubit/products_cubit.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/fruit_grade_view.dart';

class BestSellingGrEdBlocBuilder extends StatelessWidget {
  const BestSellingGrEdBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return FruitGradeView(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(child: const Center(child: Text('error')));
        } else {
          return SliverToBoxAdapter(
            child: const Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
