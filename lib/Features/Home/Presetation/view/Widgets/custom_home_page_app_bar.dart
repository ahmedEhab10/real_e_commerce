import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Notification_icon.dart';
import 'package:real_e_commerce/Core/helper_function/Get_User_Data.dart';

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
      subtitle: Text(GetUser().name, style: TextStyles.semiBold16),
      trailing: Notification_icon(),
    );
  }
}
