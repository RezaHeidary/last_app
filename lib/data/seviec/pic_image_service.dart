import 'dart:io';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class PicImage extends GetxController {
  Rx<File>? image = File("").obs;

  picImage(source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final cropped = await ImageCropper().cropImage(sourcePath: image.path);

    final imageRec = File(cropped!.path);

    this.image!.value = imageRec;
  }
}
