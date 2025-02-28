import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: AspectRatio(
        aspectRatio: 342 / 152,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              top: 0,
              right: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset(
                Assets.assetsImagesBate5Test,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.assetsImagesFeatuerdItemBack),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      ' خصم 25%',
                      style: TextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 12),
                    FeaturedItemButton(onPressed: () {}),

                    SizedBox(height: 29),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
