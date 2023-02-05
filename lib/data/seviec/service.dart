import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PicImage extends GetxController {
  Rx<File>? image = File("").obs;

  picIngallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageRec = File(image.path);
    this.image!.value = imageRec;
  }

  picInCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    final imageRec = File(image.path);
    this.image!.value = imageRec;
  }
}
