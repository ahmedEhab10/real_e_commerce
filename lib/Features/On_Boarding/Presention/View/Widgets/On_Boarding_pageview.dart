import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Features/On_Boarding/Presention/View/Widgets/On_Boarding_Item.dart';

class OnBoardingPageview extends StatelessWidget {
  OnBoardingPageview({super.key, required this.controller});
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        OnBoardingItem(
          image: Assets.assetsSvgImagePage1,
          backgroung: Assets.assetsSvgBackGroundImage1,

          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في', style: TextStyles.bold23),
              Text(
                ' HUB',
                style: TextStyles.bold23.copyWith(color: AppColors.secondColor),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          visable: true,
        ),
        OnBoardingItem(
          image: Assets.assetsSvgImagePage2,
          backgroung: Assets.assetsSvgBackGroundImage2,

          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            'ابحث وتسوق',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          visable: false,
        ),
      ],
    );
  }
}
