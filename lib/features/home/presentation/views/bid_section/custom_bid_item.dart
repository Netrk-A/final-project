import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/app_stayles.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/custom_text_button.dart';

class CustomBidItem extends StatelessWidget {
  const CustomBidItem({super.key, required this.bidCardModel});
  final BidCardModel bidCardModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 270,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: ColorManager.primaryColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              bidCardModel.image,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 19),
              child: Column(
                children: [
                  Text(bidCardModel.title, style: AppStayles.style16Medium),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    bidCardModel.subTitle,
                    style: AppStayles.style12Medium
                        .copyWith(color: ColorManager.darkGrey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(bidCardModel.price, style: AppStayles.style12Medium),
                      const CustomTextButton(buttonText: 'Enroll Now'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
