import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/values_manager.dart';
import 'package:peakmart/features/home/presentation/views/apply_section/apply_view.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/titled_bid_section.dart';
import 'package:peakmart/features/home/presentation/views/category_section/catrgory_view.dart';
import 'package:peakmart/features/home/presentation/views/landing_section/landing_view.dart';
import 'package:peakmart/features/home/presentation/views/offers_section/offers_view.dart';
import 'package:peakmart/features/home/presentation/views/partners_section/partners_view.dart';
import 'package:peakmart/features/home/presentation/views/services_section/services_section.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static const String routeName = '/home';

  final List<BidCardModel> bids = [
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card.png',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$250',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card.png',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$300',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card.png',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$350',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card.png',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$400',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card.png',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$450',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card.png',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const LandingView(),
        const ServicesSection(),
        // const SizedBox(
        //   height: AppSize.s12,
        // ),
        TitledBidSection(
          title: 'Top Bids',
          bids: bids,
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        TitledBidSection(
          title: 'Future Bids',
          bids: bids,
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        const OfferSView(),
        const SizedBox(
          height: AppSize.s12,
        ),
        CategorySection(),
        const SizedBox(
          height: AppSize.s12,
        ),
        TitledBidSection(
          title: 'Bids WorkNow',
          bids: bids,
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        TitledBidSection(
          title: 'Ended Bids',
          bids: bids,
          isEnded: true,
        ),
        const SizedBox(
          height: AppSize.s12,
        ),
        const ApplyView(),
        const SizedBox(
          height: AppSize.s12,
        ),
        const PartnersView(),
        const SizedBox(
          height: AppSize.s12,
        ),
      ],
    );
  }
}
