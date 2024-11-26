import 'package:flutter/material.dart';
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
      ],
    );
  }
}
