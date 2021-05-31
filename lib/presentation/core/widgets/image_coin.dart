import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCoin extends StatelessWidget {
  const ImageCoin({Key? key, required String imageUrl})
      : _imageUrl = imageUrl,
        super(key: key);
  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      width: 65.h,
      child: PhysicalModel(
        shape: BoxShape.circle,
        color: Colors.white,
        clipBehavior: Clip.hardEdge,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'assets/coins/$_imageUrl.webp',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
