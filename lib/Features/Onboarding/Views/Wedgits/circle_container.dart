import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  CircleContainer({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    this.image,
  });

  final double height;
  final double width;
  final int color;
  String? image;

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      maxWidth: double.infinity,
      child: ClipOval(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: Color(color)),
          child: image != null
              ? Center(
                  child: Image.asset(image ?? ''),
                )
              : const Center(),
        ),
      ),
    );
  }
}
