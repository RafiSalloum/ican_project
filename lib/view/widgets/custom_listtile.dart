import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ican_project/core/constants/color_app.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.label, required this.icon, this.onTap, required this.color});

  final String label;
  final IconData icon;
  final void Function()? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5.0,
        child: ListTile(
          style: ListTileStyle.list,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          splashColor: ColorApp.yellow,
          onTap: onTap,
          title: Text(label, style: const TextStyle(fontWeight: FontWeight.w300, fontFamily: 'poppins'),),
          leading: FaIcon(
            icon,
            size: 40,
            color: color,
          ),
        ),
      ),
    );
  }
}
