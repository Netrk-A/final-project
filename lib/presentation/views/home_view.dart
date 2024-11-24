import 'package:flutter/material.dart';

import '../widgets/ahmed_sec_one.dart';
import '../widgets/karim_sec_one.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Column(
        children: [
          Text("Home View"),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.amber,
            elevation: 2,
            child: Center(child: Text("Ahmed Sec One")),
          ),
          KarimSecOne(),
          Icon(Icons.ac_unit_rounded),
          ///// ya rab
          // hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh

        ],
      ),
    );
  }
}
