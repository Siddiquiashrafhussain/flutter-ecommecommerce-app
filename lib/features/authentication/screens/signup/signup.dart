import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyphaa/features/authentication/screens/signup/signup_form.dart';
import '../../../../common/widgets/success_screen/form_divider.dart';
import '../../../../common/widgets/success_screen/social_buttons.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Fore
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Social Buttons
              const TSocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}


