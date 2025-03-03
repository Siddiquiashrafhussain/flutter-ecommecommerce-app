import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/device/device_utility.dart';
import '../../../util/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  /// if you want to add the background color you have to wrap them in material widget.
  /// to do that we need [preferredSized] Widget and that's why created custom class. [preferredSizeWidget]
  const TTabBar({super.key, required this.tabs });


final List<Widget> tabs;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.black,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
