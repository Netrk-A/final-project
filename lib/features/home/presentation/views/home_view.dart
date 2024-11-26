import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/apply_section/apply_view.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/titled_bid_section.dart';
import 'package:peakmart/features/home/presentation/views/category_section/catrgory_view.dart';
import 'package:peakmart/features/home/presentation/views/landing_section/landing_view.dart';
import 'package:peakmart/features/home/presentation/views/offers_section/offers_view.dart';
import 'package:peakmart/features/home/presentation/views/partners_section/partners_view.dart';
import 'package:peakmart/features/home/presentation/views/services_section/services_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const LandingView(),
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: ServicesSection(),

        ),
        const TitledBidSection(title: 'Top Bids'),
        const TitledBidSection(title: 'Future Bids'),
        const SizedBox(height: 10.0),
        const OfferSView(),
        const SizedBox(height: 10.0),
        CategorySection(),
        const SizedBox(height: 10.0),
        const TitledBidSection(title: 'Bids WorkNow'),
        const TitledBidSection(title: 'Ended Bids'),
        const ApplyView(),
        const PartnersView()
      ],
    );
  }
}
