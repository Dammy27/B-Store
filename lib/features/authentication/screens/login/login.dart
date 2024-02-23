import 'package:b_store/common/style/spacing_styles.dart';
import 'package:b_store/common/widgets/login_signin/social_button.dart';
import 'package:b_store/features/authentication/screens/login/widget/login_form.dart';
import 'package:b_store/features/authentication/screens/login/widget/login_header.dart';
import 'package:b_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signin/form_divider.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and SubTitle
              const LoginHeader(),

              ///Form
              const LoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSection),

              ///Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








