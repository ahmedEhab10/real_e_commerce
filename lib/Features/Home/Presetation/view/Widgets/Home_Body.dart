import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/SearchTextField%20.dart';
import 'package:real_e_commerce/Core/cubits/Products_cubit/products_cubit.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/BestSellingGrEdBlocBuilder.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Best_Selling_header.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Featured_Item_List.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/custom_home_page_app_bar.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/fruit_grade_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<ProductsCubit>(context).getBestProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomePageAppBar(),
                SizedBox(height: 16),
                SearchTextField(),
                SizedBox(height: 12),
                FeaturedItemList(),
                SizedBox(height: 12),
                BestSellingHeader(),
              ],
            ),
          ),
          BestSellingGrEdBlocBuilder(),
        ],
      ),
    );
  }
}
