import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ican_project/controller/home_screen_controller.dart';
import 'package:ican_project/core/constants/color_app.dart';
import 'package:ican_project/data/datasource/static/drawer_items.dart';
import 'package:ican_project/data/model/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final safeArea =
        EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => SizedBox(
        width: controller.isCollapsed
            ? MediaQuery.of(context).size.width * 0.2
            : null,
        child: Drawer(
          child: Container(
            color: Colors.white38,
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24).add(safeArea),
                  width: double.infinity,
                  color: ColorApp.yellow,
                  child: buildHeader(controller.isCollapsed),
                ),
                const SizedBox(height: 24),
                buildList(
                    items: firstItems, isCollapsed: controller.isCollapsed),
                const SizedBox(height: 24),
                const Divider(color: Colors.black12),
                const SizedBox(height: 24),
                buildList(
                  indexOffset: firstItems.length,
                  items: secondItems,
                  isCollapsed: controller.isCollapsed,
                ),
                const Spacer(),
                buildCollapseIcon(context, controller.isCollapsed),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = items[index];

          return buildMenuItem(
            isCollapsed: isCollapsed,
            text: item.label,
            icon: item.icon,
            onClicked: () {
              Get.back();
              Get.to(
                Scaffold(
                  appBar: item.label == 'Join Us' ? null : AppBar(
                    backgroundColor: ColorApp.yellow,
                    title: Text(
                      item.label,
                      style: const TextStyle(fontFamily: 'poppins'),
                    ),
                  ),
                  body: items[index].widget,
                ),
              );
            },
          );
        },
      );

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    final leading = Icon(icon, color: color);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClicked,
            )
          : ListTile(
              leading: leading,
              title: Text(text,
                  style: const TextStyle(
                      color: color, fontSize: 16, fontFamily: 'poppins')),
              onTap: onClicked,
            ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    const double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : const EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Container(
        alignment: alignment,
        margin: margin,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: SizedBox(
              width: width,
              height: size,
              child: Icon(icon, color: Colors.black54),
            ),
            onTap: () {
              controller.toggleIsCollapsed();
            },
          ),
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => isCollapsed
      ? const Image(
          image: AssetImage('assets/images/logo_eye.png'),
          width: 32,
          height: 32,
        )
      : const Row(
          children: [
            SizedBox(width: 24),
            Image(
                image: AssetImage('assets/images/logo_eye.png'),
                width: 84,
                height: 84),
            SizedBox(width: 16),
            Column(
              children: [
                Text(
                  'iCAN',
                  style: TextStyle(
                      fontSize: 28, color: Colors.black, fontFamily: 'poppins'),
                ),
                Text(
                  'Technical Solutions',
                  style: TextStyle(
                      fontSize: 14, color: Colors.black, fontFamily: 'poppins'),
                ),
              ],
            ),
          ],
        );
}
