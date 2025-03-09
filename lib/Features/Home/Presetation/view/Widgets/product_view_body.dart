import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/SearchTextField%20.dart';
import 'package:real_e_commerce/Core/cubits/Products_cubit/products_cubit.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/BestSellingGrEdBlocBuilder.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Best_Selling_header.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Featured_Item_List.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/custom_home_page_app_bar.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/product_view_header.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                SearchTextField(),
                SizedBox(height: 12),

                productviewheader(
                  productcount: context.read<ProductsCubit>().productcount,
                ),
              ],
            ),
          ),
          BestSellingGrEdBlocBuilder(),
        ],
      ),
    );
  }
}
