import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/titled_bid_section.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/ended_bids_page_view.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/titled_ended_bids.dart';
import 'package:peakmart/features/home/presentation/views/landing_section/landing_view.dart';
import 'package:peakmart/features/home/presentation/views/services_section/services_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LandingView(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: ServicesSection(),
        ),
        // TitledBidSection(title: 'Trending Bids'),
        // TitledBidSection(title: 'Future Bids'),
        TitledEndedBids(
          title: 'Ended Bids',
        )
      ],
    );
  }
}
