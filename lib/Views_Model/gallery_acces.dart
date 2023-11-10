// // import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'dart:io';

// Future<void> openGallery() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     type: FileType.image, // Specify the file type as an image
//     allowMultiple: false, // Allow the user to select only one file
//   );

//   if (result != null) {
//     File file = File(result.files.single.path!);
//     // You can access the selected image using the 'file' variable
//     // Add your logic to handle the selected image here
//   } else {
//     // Handle the case when the user cancels the file selection
//   }
// }
