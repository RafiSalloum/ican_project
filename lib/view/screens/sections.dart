import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/core/constants/color_app.dart';
import 'package:ican_project/data/datasource/static/sections_list.dart';
import 'package:ican_project/data/datasource/static/slider_images.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 12),
          const Text(
            'Our Sections',
            style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
          ),
          const SizedBox(
            width: 160,
            child: Divider(color: Colors.black26),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: sectionsImages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(sections[index]);
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(6),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: ColorApp.yellow,
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                sectionsImages[index].image,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              sectionsImages[index].title,
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                              fontFamily: 'poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
