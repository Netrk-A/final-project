import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_page_view.dart';

class TitledBidSection extends StatelessWidget {
  const TitledBidSection({super.key, required this.title,required this.bids, this.isEnded=false});
  final String title;
  final List<BidCardModel> bids;
  final bool isEnded ;
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
         SizedBox(
           height: 410,
             child: BidPageView(bidCards: bids,)),
      ],
    );
  }
}
