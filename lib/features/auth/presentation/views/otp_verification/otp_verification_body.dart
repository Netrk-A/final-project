import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/auth/presentation/shared_widgets/account_creation_or_login_prompt.dart';
import 'package:peakmart/features/auth/presentation/shared_widgets/cutom_elevated_button.dart';
import 'package:peakmart/features/auth/presentation/views/otp_verification/custom_otp_text_field.dart';

class OtpVerificationBody extends StatelessWidget {
  const OtpVerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(29, 20, 29, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Enter the code we sent you to your e-mail here',
              style: getMediumStyle(
                      fontSize: FontSize.s15, color: ColorManager.grey1)
                  .copyWith(fontFamily: FontConstants.fontMontserratFamily),
            ),
            SizedBox(
              height: 78.h,
            ),
            const CustomOtpTextField(),
            SizedBox(
              height: 25.h,
            ),
            const AccountCreationOrLoginPrompt(
                text: 'Didn\'t receive a code?', textButton: 'Resend'),
            SizedBox(
              height: 84.h,
            ),
            CustomElevatedButton(
              textButton: 'Continue',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
