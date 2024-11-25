import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/app_stayles.dart';
import 'package:peakmart/featuers/home/presentation/views/bid_section/bid_page_view.dart';

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
          style: AppStayles.style31Bold,
        ),
        const SizedBox(
          height: 25,
        ),
        const SizedBox(height: 400, child: BidPageView()),
      ],
    );
  }
}
