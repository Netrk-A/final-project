import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/values_manager.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/custom_ended_bids_item.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/ended_bids_card_model.dart';

class TransformingEndedBidsItem extends StatelessWidget {
  const TransformingEndedBidsItem(
      {super.key, required this.scale, required this.opacity});
  final double scale, opacity;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(opacity), // Apply opacity effect
          BlendMode.srcATop, // Use blend mode to apply the color filter
        ),
        child: const Padding(
          padding: EdgeInsets.only(right: AppPadding.p12),
          child: CustomEndedBidsItem(
              endedBidsCardModel: EndedBidsCardModel(
                  image: 'assets/images/card.png',
                  title: 'The Luxe Houndstooth Lounge Chair',
                  price: '\$1000')),
        ),
      ),
    );
  }
}
