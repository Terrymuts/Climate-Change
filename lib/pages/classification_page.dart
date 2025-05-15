import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/classification_controller.dart';


class ClassificationPage extends StatelessWidget {
  final ClassificationController c = Get.put(ClassificationController());

   ClassificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Classify Image')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.upload_file),
              label: Text('Pick Image'),
              onPressed: c.pickImage,
            ),
            const SizedBox(height: 20),
            Obx(() {
              if (c.selectedImage.value == null) return Text('No image selected');
              return Column(
                children: [
                  Image.file(c.selectedImage.value!, height: 200),
                  const SizedBox(height: 10),
                  Text('Result: ${c.result.value}'),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
