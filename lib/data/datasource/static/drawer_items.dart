import 'package:flutter/material.dart';
import 'package:ican_project/data/model/drawer_item_model.dart';
import 'package:ican_project/view/screens/contact_us.dart';
import 'package:ican_project/view/screens/join_us.dart';
import 'package:ican_project/view/screens/sections.dart';
import 'package:ican_project/view/screens/who_we_are.dart';

final firstItems = [
  const DrawerItem(label: 'Who We Are', icon: Icons.people, widget: WhoWeAre()),
  const DrawerItem(label: 'Our Sections', icon: Icons.window, widget: SectionsScreen()),
  const DrawerItem(label: 'Join Us', icon: Icons.emoji_people, widget: JoinUs()),
  // const DrawerItem(label: 'Performance', icon: Icons.build),
];

final secondItems = [
  const DrawerItem(label: 'Contact Us', icon: Icons.phone_iphone, widget:ContactUS()),

];

