import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final double width;
  final double height;
  final EdgeInsets padding;

  const ImageButton({
    super.key,
    required this.imagePath,
    required this.onTap,
    this.width = 24,
    this.height = 24,
    this.padding = const EdgeInsets.all(12),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Tap(
        onTap: onTap,
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
