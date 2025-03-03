import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/device/device_utility.dart';
import '../../../util/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,

  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions ;
  final VoidCallback? leadingOnPressed ;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
     child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
       ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left_3_copy, color: dark ? TColors.white : TColors.dark))
       : leadingIcon != null
         ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
          : null,
       title: title,
       actions: actions,
    ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
