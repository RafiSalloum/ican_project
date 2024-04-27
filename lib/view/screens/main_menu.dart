import 'package:flutter/material.dart';
import 'package:ican_project/view/widgets/custom_slider_and_header.dart';
import 'package:ican_project/view/widgets/custom_tab_bar.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomSlider(),
            SizedBox(height: 10),
            CustomTabBar(),
          ],
        ),
      ),
    );
  }
}
