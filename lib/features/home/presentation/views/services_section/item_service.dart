import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/font_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/home/presentation/views/services_section/item_service_model.dart';

class ItemService extends StatelessWidget {
  const ItemService({super.key, required this.itemServiceModel});
  final ItemServiceModel itemServiceModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 251,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // زوايا دائرية
        ),
        elevation: 6, // تأثير ظل خفيف
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), // مسافات داخل الكارد
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      itemServiceModel.title,
                      style: getSemiBoldStyle(
                        fontSize: FontSize.s14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4), // تقليل المسافة بين العنوان والوصف
                    Text(
                      itemServiceModel.description,
                      style: getMediumStyle(
                        fontSize: FontSize.s10,
                        color: Colors.grey.shade600,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8), // مسافة بين النص والصورة
              Expanded(
                flex: 1,
                child: Image.asset(
                  itemServiceModel.image,
                  height: 60,
                  width: 60,
                  fit: BoxFit.contain,
                  alignment: Alignment.topRight, // محاذاة الصورة إلى الأعلى
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
