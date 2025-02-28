import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';

class CustomHomePageAppBar extends StatelessWidget {
  const CustomHomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.assetsImagesProfilePhoto),
      title: Text(
        ' صباح الخير !..',
        style: TextStyles.regular16.copyWith(color: Color(0xFF949D9E)),
      ),
      subtitle: Text('احمد ايهاب', style: TextStyles.semiBold16),
      trailing: Container(
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: Color.fromARGB(255, 234, 255, 231),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(Assets.assetsSvgNotification),
        ),
      ),
    );
  }
}
