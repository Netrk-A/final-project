import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/services_section/item_service.dart';
import 'package:peakmart/features/home/presentation/views/services_section/item_service_model.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ItemService(
            itemServiceModel: ItemServiceModel(
                title: 'Product delivery',
                description:
                    'You can choose to pay easily via PeakMart’s digital wallet, credit cards, in installments or by cash.',
                image: 'assets/images/Credit_Card.png'),
          );
        },
      ),
    );
  }
}
