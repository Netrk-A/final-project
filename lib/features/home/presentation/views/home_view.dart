import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/landing_section/landing_view.dart';

class HomeView  extends StatelessWidget {
  const HomeView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LandingView(),
      ],
    );
  }
}
