import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peakmart/app/resources/assets_manager.dart';
import 'package:peakmart/features/auth/presentation/views/sign_in/widgets/login_divider_widget.dart';
import 'package:peakmart/features/auth/presentation/views/sign_in/widgets/other_login_method_shape.dart';

class OtherLoginWays extends StatelessWidget {
  const OtherLoginWays({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginDividerWidget(),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             OtherLoginMethodsShape(
              icon: IconsAssets.googleIcon,
            ),
             OtherLoginMethodsShape(
              icon: IconsAssets.appleIcon,
            ),
            OtherLoginMethodsShape(
              icon: IconsAssets.facebookIcon,
            ),
          ],
        )
      ],
    );
  }
}
