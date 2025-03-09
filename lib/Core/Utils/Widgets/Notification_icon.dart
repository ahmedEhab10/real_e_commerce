import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';

class Notification_icon extends StatelessWidget {
  const Notification_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: OvalBorder(),
        color: Color.fromARGB(255, 234, 255, 231),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(Assets.assetsSvgNotification),
      ),
    );
  }
}
