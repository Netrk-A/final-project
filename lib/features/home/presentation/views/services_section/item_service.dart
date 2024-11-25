import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/home/presentation/views/services_section/item_service_model.dart';

class ItemService extends StatelessWidget {
  const ItemService({super.key, required this.itemServiceModel});
  final ItemServiceModel itemServiceModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          itemServiceModel.title,
          style: getSemiBoldStyle(fontSize: FontSize.s16, color: Colors.black),
        ),
        subtitle: Text(
          itemServiceModel.description,
          style: getMediumStyle(fontSize: FontSize.s10, color: Colors.black),
        ),
        trailing: Image.asset(itemServiceModel.image),
      ),
    );
  }
}
