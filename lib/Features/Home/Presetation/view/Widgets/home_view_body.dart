import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Fruit_Item.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/SearchTextField%20.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Best_Selling_header.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/Featured_Item_List.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/custom_home_page_app_bar.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/fruit_grade_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
          FruitGradeView(),
        ],
      ),
    );
  }
}
