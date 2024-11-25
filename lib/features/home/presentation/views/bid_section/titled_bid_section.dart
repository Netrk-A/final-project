import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_page_view.dart';

class TitledBidSection extends StatelessWidget {
  const TitledBidSection({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style:
              getBoldStyle(fontSize: FontSize.s28, color: ColorManager.primary),
        ),
        const SizedBox(
          height: 12,
        ),
        const SizedBox(
          height: 400,
          child: BidPageView(),
        ),
      ],
    );
  }
}
