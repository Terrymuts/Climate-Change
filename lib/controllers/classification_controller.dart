import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ClassificationController extends GetxController {
  final _picker = ImagePicker();
  Rx<File?> selectedImage = Rx<File?>(null);
  RxString result = ''.obs;

  Future<void> pickImage() async {
    final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      selectedImage.value = File(file.path);
      classifyImage();
    }
  }

  Future<void> classifyImage() async {
    if (selectedImage.value == null) return;
    try {
      // TODO: send image to your API and set result.value
      result.value = 'Cat'; // placeholder
    } catch (e) {
      result.value = 'Error: $e';
    }
  }
}
