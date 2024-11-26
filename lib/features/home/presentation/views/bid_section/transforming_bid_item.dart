import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/values_manager.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/custom_bid_item.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';

class TransformingBidItem extends StatelessWidget {
  const TransformingBidItem(
      {super.key, required this.scale, required this.opacity, required this.bidCardModel});
  final double scale, opacity;
  final BidCardModel bidCardModel;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(opacity), // Apply opacity effect
          BlendMode.srcATop, // Use blend mode to apply the color filter
        ),
        child:  Padding(
          padding:  EdgeInsets.only(right: AppPadding.p12),
          child:  CustomBidItem(
            bidCardModel: BidCardModel(
              image: bidCardModel.image,
              title: bidCardModel.title,
              subTitle: bidCardModel.subTitle,
              price: bidCardModel.price,
            ),
          ),
        ),
      ),
    );
  }
}
