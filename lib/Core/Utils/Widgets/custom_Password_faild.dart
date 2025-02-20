import 'package:flutter/material.dart';

import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Text_Faild.dart';

class Password_faild extends StatefulWidget {
  const Password_faild({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<Password_faild> createState() => _Password_faildState();
}

class _Password_faildState extends State<Password_faild> {
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFaild(
      obscureText: isHide,
      onSaved: widget.onSaved,
      hinttext: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      icon: GestureDetector(
        onTap: () {
          isHide = !isHide;
          setState(() {});
        },
        child:
            isHide
                ? Icon(Icons.remove_red_eye, color: Color(0XFF949D9E))
                : Icon(Icons.visibility_off, color: Color(0XFF949D9E)),
      ),
    );
  }
}
