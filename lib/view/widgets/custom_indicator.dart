import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/controller/home_screen_controller.dart';
import 'package:ican_project/core/constants/color_app.dart';
import 'package:ican_project/data/datasource/static/slider_images.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: newsImages.map((imageUrl) {
          int index = newsImages.indexOf(imageUrl);
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 2.5),
            height: 8.0,
            width: controller.sliderIndex == index ? 16.0 : 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: controller.sliderIndex == index
                  ? ColorApp.yellow
                  : Colors.grey,
              borderRadius: BorderRadius.circular(5.0),
            ),
          );
        }).toList(),
      ),
    );
  }
}
