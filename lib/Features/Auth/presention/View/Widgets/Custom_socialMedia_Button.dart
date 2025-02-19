import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';

class CustomSocialmediaButton extends StatelessWidget {
  const CustomSocialmediaButton({
    super.key,
    required this.text,
    required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        side: BorderSide(width: 1, color: Color(0xFFDDDFDF)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () {},
      child: ListTile(
        visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
        leading: SvgPicture.asset(image),
        title: Text(
          text,
          style: TextStyles.semiBold16,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
