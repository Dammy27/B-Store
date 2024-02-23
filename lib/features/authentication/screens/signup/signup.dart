import 'package:b_store/common/widgets/login_signin/form_divider.dart';
import 'package:b_store/common/widgets/login_signin/social_button.dart';
import 'package:b_store/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
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

              const SizedBox(height: TSizes.spaceBtwSection),

              ///Form
              const SignupForm(),

              const SizedBox(height: TSizes.spaceBtwSection),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSection),

              /// Social Button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


