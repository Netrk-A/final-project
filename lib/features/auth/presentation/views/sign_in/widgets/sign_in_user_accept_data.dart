import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peakmart/features/auth/presentation/shared_widgets/custom_text_form_field.dart';

class SignInUserAcceptData extends StatelessWidget {
  const SignInUserAcceptData({super.key, required this.onEmailChanged, required this.onPasswordChanged,});
final Function(String) onEmailChanged;
final Function(String) onPasswordChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomTextFormField(
          labelText: 'Username or Email',
          hintText: 'Username or Email',
          iconData: Icons.person,
          onChanged:onEmailChanged
        ),

        SizedBox(
          height: 25.h,
        ),
         CustomTextFormField(
          labelText: 'Password',
          hintText: 'Password',
          iconData: Icons.lock,
          onChanged: onPasswordChanged,
        ),
      ],
    );
  }
}
