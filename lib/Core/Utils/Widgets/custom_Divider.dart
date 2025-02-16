import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(thickness: 1, color: Color(0xFFDDDFDF))),
        Text('   أو    ', style: TextStyles.semiBold16),
        Expanded(child: Divider(thickness: 1, color: Color(0xFFDDDFDF))),
      ],
    );
  }
}
