import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/controller/home_screen_controller.dart';
import 'package:ican_project/data/datasource/static/slider_images.dart';
import 'package:ican_project/view/widgets/custom_indicator.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(12.0),
              child: const Text(
                'Latest News',
                style: TextStyle(fontSize: 20.0, fontFamily: 'poppins'),
              ),
            ),
            CarouselSlider(
              carouselController: controller.carouselController,
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                height: 200.0,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                onPageChanged: (index, reason) {
                  controller.sliderIndex = index;
                  controller.update();
                },
              ),
              items: newsImages.map((String imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          opacity: 1,
                          image: AssetImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.amber,
                      ),
                      // child: const Text(
                      //   'text',
                      //   style: TextStyle(fontSize: 16.0),
                      // ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 10.0),
            const CustomIndicator(),
          ],
        ),
      ),
    );
  }
}
