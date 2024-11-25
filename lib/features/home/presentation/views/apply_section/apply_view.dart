import 'package:flutter/material.dart';

class ApplyView extends StatelessWidget {
  const ApplyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/apply.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
