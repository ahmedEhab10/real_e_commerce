import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({super.key, required this.onPressed, required this.text});
  Function() onPressed;
  String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
