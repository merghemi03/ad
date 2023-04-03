import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../Models/AppSettings.dart';

class ZoomImage extends StatelessWidget {
  String urlImage;
  ZoomImage({Key? key,required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppSettings.dark
          ? const Color(0xff0D0D0D)
          : const Color(0xffF5F6FF),
      body: Center(
        child: PhotoView(
          imageProvider: NetworkImage(
            urlImage,
          ),
          enableRotation: true,
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2.5,
          initialScale: PhotoViewComputedScale.contained,
        ),
      ),
    );
  }
}
