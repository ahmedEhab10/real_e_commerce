import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Features/Home/domain/entites/Bottom_Navigation_Bar_Entity.dart';

class CustomBottomnavigatiorBar extends StatefulWidget {
  CustomBottomnavigatiorBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomnavigatiorBar> createState() =>
      _CustomBottomnavigatiorBarState();
}

class _CustomBottomnavigatiorBarState extends State<CustomBottomnavigatiorBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 25,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children:
            BottomNavigationBarList.asMap().entries.map((e) {
              var index = e.key;
              var itemS = e.value;
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      widget.onItemTapped(index);
                    });
                  },
                  child: navigatorIcon(
                    isActive: selectedIndex == index,
                    bottomNavigationBarEntity: itemS,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}

class navigatorIcon extends StatelessWidget {
  const navigatorIcon({
    super.key,
    required this.isActive,
    required this.bottomNavigationBarEntity,
  });
  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveIcon(
          image: bottomNavigationBarEntity.Activeimage,
          title: bottomNavigationBarEntity.title,
        )
        : inActiveIcon(image: bottomNavigationBarEntity.InActiveIamge);
  }
}

class inActiveIcon extends StatelessWidget {
  const inActiveIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}

class ActiveIcon extends StatelessWidget {
  const ActiveIcon({super.key, required this.image, required this.title});
  final String image, title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 8),
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: const Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgPicture.asset(image)),
            ),

            Text(
              title,
              style: TextStyles.semiBold11.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
