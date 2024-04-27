// import 'package:flutter/material.dart';
// import 'dart:html';
//
// class FileUploadButton extends StatelessWidget {
//   const FileUploadButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       child: Text('UPLOAD FILE'),
//       onPressed: () async {
//         var picked = await FilePicker.platform.pickFiles();
//
//         if (picked != null) {
//           print(picked.files.first.name);
//         }
//       },
//     );
//   }
// }