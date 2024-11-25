import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/app_stayles.dart';
import 'package:peakmart/app/resources/color_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126,
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ColorManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: AppStayles.style16Bold.copyWith(
            color: ColorManager.white,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}
