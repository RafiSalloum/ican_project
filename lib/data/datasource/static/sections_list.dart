import 'package:flutter/material.dart';
import 'package:ican_project/view/screens/sections/digital_marketing.dart';
import 'package:ican_project/view/screens/sections/graphic_design.dart';
import 'package:ican_project/view/screens/sections/software_development.dart';
import 'package:ican_project/view/screens/sections/video_montage.dart';

List<Widget> sections = [
  const SoftwareDevelopment(),
  const DigitalMarketing(),
  const VideoMontage(),
  const GraphicDesign(),
];