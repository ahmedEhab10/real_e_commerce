import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';

class CustomTextFaild extends StatelessWidget {
  const CustomTextFaild({
    super.key,
    required this.hinttext,
    required this.keyboardType,
    this.icon,
    this.onSaved,
    this.obscureText = false,
  });
  final String hinttext;
  final TextInputType keyboardType;
  final Widget? icon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (value) {
        if (value!.isEmpty || value == null) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      onSaved: onSaved,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hinttext,
        hintStyle: TextStyles.bold13.copyWith(color: Color(0XFF949D9E)),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: borders(),
        enabledBorder: borders(),
        focusedBorder: borders(),
      ),
    );
  }

  OutlineInputBorder borders() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
    );
  }
}
