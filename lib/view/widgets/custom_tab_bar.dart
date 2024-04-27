import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/controller/home_screen_controller.dart';
import 'package:ican_project/core/constants/color_app.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => DefaultTabController(
        length: controller.tabBarInfo.length,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(
              height: 40, // Height of the tab bar
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: ColorApp.yellow,
                labelStyle: const TextStyle(fontSize: 14, fontFamily: 'poppins'),
                physics: const ClampingScrollPhysics(),
                tabs: [
                  Tab(
                    text: controller.tabBarInfo[0],
                  ),
                  Tab(
                    text: controller.tabBarInfo[1],
                  ),
                  Tab(
                    text: controller.tabBarInfo[2],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 300.0,
              width: double.infinity,
              child: TabBarView(
                children: [
                  // Tab 2 content
                  Container(
                    margin: const EdgeInsets.all(12),
                    child: const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', style: TextStyle(fontFamily: 'poppins'),),
                  ),
                  GridView.count(
                    crossAxisCount: 2, // Number of columns in the grid
                    children: List.generate(
                      10, // Number of items in the grid
                          (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: ColorApp.grey,
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.0),),
                              ),
                              child: Center(
                                child: Text('Item $index'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0, bottom: 44.0, right: 14.0, left: 14.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: ColorApp.grey,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://blog.shift4shop.com/hubfs/iStock-1051616786.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Label', style: TextStyle(fontFamily: 'poppins'),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tab 3 content
                  Container(
                    margin: const EdgeInsets.all(12),
                    child: const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', style: TextStyle(fontFamily: 'poppins'),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
