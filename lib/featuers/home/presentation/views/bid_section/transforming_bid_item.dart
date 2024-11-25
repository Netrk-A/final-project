import 'package:flutter/material.dart';
import 'package:peakmart/featuers/home/presentation/views/bid_section/custom_bid_item.dart';
import 'package:peakmart/featuers/home/presentation/views/bid_section/bid_card_model.dart';

class TransformingBidItem extends StatelessWidget {
  const TransformingBidItem(
      {super.key, required this.scale, required this.opacity});
  final double scale, opacity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Transform.scale(
        scale: scale,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(opacity), // Apply opacity effect
            BlendMode.srcATop, // Use blend mode to apply the color filter
          ),
          child: const CustomBidItem(
            bidCardModel: BidCardModel(
              image: 'assets/images/card.png',
              title: 'The Luxe Houndstooth Lounge Chair',
              subTitle: 'Auction End Date: November 1, 2024',
              price: 'Now Bid: \n\$250',
            ),
          ),
        ),
      ),
    );
  }
}
