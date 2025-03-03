import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../util/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
    const Text('Skypha '),
    const SizedBox(height: TSizes.spaceBtwItems / 2),
          Row(
            children: [
              const Icon(Icons.phone_iphone_outlined, color: Colors.grey, size: 16),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('+91-235-258-7894', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Row(
            children: [
              const Icon(Icons.location_history_outlined, color: Colors.grey, size: 16),
              const SizedBox(width: TSizes.spaceBtwItems),
              Expanded(
                child: Text('H.NO.1129,FLAT:502,5 FLR, UZAIF APRT, NEW GAURIPADA, NAROLI, BHIWANDI, THANE, MAHARASHTRA-421305 ',
                    style: Theme.of(context).textTheme.bodyMedium, softWrap: true),
              ),
            ],
          ),
    ],
    );
  }
}
