import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/routes_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/auth/presentation/shared_widgets/account_creation_or_login_prompt.dart';
import 'package:peakmart/features/auth/presentation/shared_widgets/cutom_elevated_button.dart';
import 'package:peakmart/features/auth/presentation/views/sign_in/widgets/custom_forget_pass_button.dart';
import 'package:peakmart/features/auth/presentation/views/sign_in/widgets/other_login_ways.dart';
import 'package:peakmart/features/auth/presentation/views/sign_in/widgets/sign_in_user_accept_data.dart';


class SignInBuildWidgets extends StatefulWidget {
  const SignInBuildWidgets({super.key});

  @override
  State<SignInBuildWidgets> createState() => _SignInBuildWidgetsState();
}

String? email, password, phoneNumber;

class _SignInBuildWidgetsState extends State<SignInBuildWidgets> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ SizedBox(
            height: 51.h,
          ),
          Text(
            'Welcome Back!',
            style: getSemiBoldStyle(
                    fontSize: FontSize.s32, color: ColorManager.black)
                .copyWith(fontFamily: FontConstants.fontMontserratFamily),
          ),
          SizedBox(
            height: 51.h,
          ),
          SignInUserAcceptData(
            onEmailChanged: (value) {
              email = value;
            },
            onPasswordChanged: (value) {
              password = value;
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomForgetPassButton(),
          SizedBox(
            height: 8.h,
          ),
           CustomElevatedButton(
            textButton: 'Login',onPressed: () {
              Navigator.pushNamed(context, Routes.mainScreen);
            },
          ),
          SizedBox(
            height: 60.h,
          ),
          const OtherLoginWays(),
          SizedBox(
            height: 26.h,
          ),
          const AccountCreationOrLoginPrompt(
            text: 'Create An Account',
            textButton: 'Sign Up',
          )
        ],
      ),
    );
  }
}
