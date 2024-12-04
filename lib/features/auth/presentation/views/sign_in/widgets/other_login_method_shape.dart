import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peakmart/app/resources/color_manager.dart';

class OtherLoginMethodsShape extends StatelessWidget {
  const OtherLoginMethodsShape({
    super.key,
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        onTap: () {},
        splashColor: const Color(0xffFCF3F6),
        child: CircleAvatar(
          radius: 32,
          backgroundColor: ColorManager.primary,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xffFCF3F6),
            child: Center(
              child: SvgPicture.asset(icon,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
