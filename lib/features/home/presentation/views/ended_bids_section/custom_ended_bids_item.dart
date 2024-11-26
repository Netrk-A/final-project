import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/ended_bids_card_model.dart';

import '../../../../../app/resources/values_manager.dart';

class CustomEndedBidsItem extends StatelessWidget {
  const CustomEndedBidsItem({super.key, required this.endedBidsCardModel});
  final EndedBidsCardModel endedBidsCardModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 250,
        height: 347,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: ColorManager.primary,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: AppPadding.p8, right: AppPadding.p19),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  endedBidsCardModel.image,
                  fit: BoxFit.fill, // لاختيار طريقة ملائمة لتعبئة الصورة
                  width: double
                      .infinity, // جعل الصورة تأخذ عرض الـ Container بالكامل
                  height: 200,
                ),
                // CachedNetworkImage(
                //   imageUrl:
                //       "https://th.bing.com/th/id/R.f8cd97dceece7f86782b9f3ea85b69f9?rik=S0gyWHLbi4myzA&pid=ImgRaw&r=0",
                //   placeholder: (context, url) => const CircularProgressIndicator(),
                //   errorWidget: (context, url, error) => const Icon(Icons.error),
                // ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  endedBidsCardModel.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: getMediumStyle(
                      color: ColorManager.black, fontSize: FontSize.s16),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Sold out',
                  style: getMediumStyle(
                      color: ColorManager.red, fontSize: FontSize.s12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sold for: ',
                      textAlign: TextAlign.center,
                      style: getSemiBoldStyle(
                          fontSize: FontSize.s12, color: ColorManager.black),
                    ),
                    Text(
                      endedBidsCardModel.price,
                      textAlign: TextAlign.center,
                      style: getBoldStyle(
                          fontSize: FontSize.s22, color: ColorManager.black),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
