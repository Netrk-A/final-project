import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/titled_bid_section.dart';
import 'package:peakmart/features/home/presentation/views/landing_section/landing_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LandingView(),
        // ServicesSection(),
        TitledBidSection(title: 'Trending Bids'),
      ],
    );
  }
}
