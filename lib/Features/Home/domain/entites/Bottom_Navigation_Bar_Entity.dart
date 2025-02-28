import 'package:real_e_commerce/Core/Utils/App_images.dart';

class BottomNavigationBarEntity {
  final String title;
  final String Activeimage, InActiveIamge;

  BottomNavigationBarEntity({
    required this.title,
    required this.Activeimage,
    required this.InActiveIamge,
  });
}

List<BottomNavigationBarEntity> BottomNavigationBarList = [
  BottomNavigationBarEntity(
    title: 'الرئيسية',
    Activeimage: Assets.assetsSvgActiveHomeIcon,
    InActiveIamge: Assets.assetsSvgInActiveHomeIcon,
  ),
  BottomNavigationBarEntity(
    title: 'المنتجات',
    Activeimage: Assets.assetsSvgActiveProductIcon,
    InActiveIamge: Assets.assetsSvgInActiveProductIcon,
  ),
  BottomNavigationBarEntity(
    title: 'سلة التسوق',
    Activeimage: Assets.assetsSvgActiveShoppingCartIcon,
    InActiveIamge: Assets.assetsSvgInActiveShoppingCartIcon,
  ),
  BottomNavigationBarEntity(
    title: 'حسابي',
    Activeimage: Assets.assetsSvgAxctiveUserIcon,
    InActiveIamge: Assets.assetsSvgInAxctiveUserIcon,
  ),
];
