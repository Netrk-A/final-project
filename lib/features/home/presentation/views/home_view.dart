import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/apply_section/apply_view.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/titled_bid_section.dart';
import 'package:peakmart/features/home/presentation/views/category_section/catrgory_view.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/titled_ended_bids.dart';
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
      image: 'assets/images/card_image.svg',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$250',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card_image.svg',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$250',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card_image.svg',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$250',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card_image.svg',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$2880',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card_image.svg',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$2350',
    ),
    BidCardModel(
      title: 'The Luxe Houndstooth Lounge Chair',
      image: 'assets/images/card_image.svg',
      subTitle: 'Auction End Date: November 1, 2024',
      price: 'Now Bid: \n\$200',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const LandingView(),
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: ServicesSection(),
        ),
         TitledBidSection(
          title: 'Top Bids',
          bids: bids,
        ),
         TitledBidSection(title: 'Future Bids',bids: bids,),
        const SizedBox(height: 10.0),
        const OfferSView(),
        const SizedBox(height: 10.0),
        CategorySection(),
        const SizedBox(height: 10.0),
         TitledBidSection(title: 'Bids WorkNow',bids: bids,),
        const TitledEndedBids(title: 'Ended Bids'),
        const ApplyView(),
        const PartnersView()
      ],
    );
  }
}
