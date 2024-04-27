import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/controller/home_screen_controller.dart';
import 'package:ican_project/data/datasource/static/bottom_navigation_button_items.dart';
import 'package:ican_project/view/widgets/custom_appbar.dart';
import 'package:ican_project/view/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        appBar: customAppBar(),
        bottomNavigationBar: FlashyTabBar(
          iconSize: 28,
          animationDuration: const Duration(milliseconds: 400),
          selectedIndex: controller.selectedIndex,
          showElevation: true,
          onItemSelected: (index) => controller.selectTab(index),
          items: bottomNavBarItems,
        ),
        body: controller.tabBarTabs.elementAt(controller.selectedIndex),
        drawer: const CustomDrawer(),
      ),
    );
  }
}
