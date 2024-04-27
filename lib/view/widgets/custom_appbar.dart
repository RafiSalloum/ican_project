import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/core/constants/color_app.dart';
import 'package:ican_project/view/screens/contact_us.dart';

PreferredSizeWidget? customAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(76.0),
    child: AppBar(
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 2.0,
          color: Colors.white38,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.vertical(
          // top: Radius.elliptical(200, 200),
          bottom: Radius.elliptical(300, 30),
        ),
      ),
      elevation: 5.0,
      // backgroundColor: Colors.amber[600],
      backgroundColor: ColorApp.yellow,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 58,
            width: 58,
          ),
          const SizedBox(
            width: 12,
          ),
          const Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'iCAN',
                style: TextStyle(fontSize: 16, fontFamily: 'poppins'),
              ),
              Text(
                'for Technical Solutions',
                style: TextStyle(fontSize: 12, fontFamily: 'poppins'),
              ),
            ],
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            Get.to(
              Scaffold(
                appBar: AppBar(

                ),
                body: const ContactUS(),
              ),
            );
          },
          icon: const Icon(Icons.call),
        ),
      ],
    ),
  );
}
