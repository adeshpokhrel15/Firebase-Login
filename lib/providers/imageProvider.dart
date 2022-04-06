import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final imageProvider = ChangeNotifierProvider((ref) => ImageProvider());

class ImageProvider extends ChangeNotifier {
  XFile? image;

  Future<void> getImage() async {
    final ImagePicker _picker = ImagePicker();
    // pick an image
    image = await _picker.pickImage(source: ImageSource.gallery);
  }
}
