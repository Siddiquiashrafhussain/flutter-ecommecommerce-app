import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.user, width: 50, height: 50, padding: 0),
      title: Text('SKYPHAA', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white)),
      subtitle: Text('Skyphaa@gmail.com', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}