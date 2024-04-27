import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/view/screens/contact_us.dart';
import 'package:ican_project/view/screens/main_menu.dart';
import 'package:ican_project/view/screens/sections.dart';
import 'package:ican_project/view/screens/who_we_are.dart';

abstract class HomeScreenController extends GetxController {
  getCountriesData();
}

class HomeScreenControllerImp extends HomeScreenController {
  late CarouselController carouselController = CarouselController();
  int sliderIndex = 0;
  int selectedIndex = 0;
  bool _isCollapsed = true;
  String appliedOption = '';
  String appliedMilitaryStatus = '';
  int descriptionLimit = 0;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  List<String> tabBarInfo =[
    'iCAN',
    'Our Services',
    'Our Branches'
  ];
  List<String> appliedOptions = [
    'Back-end Developer',
    'Front-end Developer',
    'Mobile Application Developer',
    'Designer',
    'Editor'
  ];
  List<String> militaryStatus = [
    'Delayed',
    'Served',
    'Exempt',
  ];

  bool get isCollapsed => _isCollapsed;
  List<Widget> tabBarTabs = [
    const MainMenuScreen(),
    const SectionsScreen(),
    const WhoWeAre(),
    const ContactUS(),
  ];
  void toggleIsCollapsed() {
    _isCollapsed = !_isCollapsed;
    update();
  }

  void changeDropListItemApplied(String newItem) {
    appliedOption = newItem;
    update();
  }
  void changeDropListItemMilitary(String newItem) {
    appliedMilitaryStatus = newItem;
    update();
  }

  void selectTab(int value) {
    selectedIndex = value;
    update();
  }

  @override
  getCountriesData() {
    // TODO: implement getCountriesData
    throw UnimplementedError();
  }

  @override
  void onInit() {
    carouselController = CarouselController();
    super.onInit();
  }
}
