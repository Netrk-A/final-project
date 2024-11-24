import 'package:flutter/material.dart';

import '../widgets/ahmed_sec_one.dart';
import '../widgets/karim_sec_one.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AhmedSecOne(),
          KarimSecOne(),
        ],
      ),
    );
  }
}
