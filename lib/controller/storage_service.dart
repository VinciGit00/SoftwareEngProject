import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String Image) async {
    return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
  }

  Future<Image?> getImage(BuildContext context, String imageName) async {
    Image? image;
    await FireStorageService.loadImage(context, imageName).then((value) {
      image = Image.network(
        value.toString(),
        fit: BoxFit.scaleDown,
      );
    });
    return image;
  }

  static Future<String?> getImageUrl(
      BuildContext context, String imageName) async {
    String? imageUrl;
    await FireStorageService.loadImage(context, imageName).then((value) {
      imageUrl = value.toString();
    });
    return imageUrl;
  }
}
