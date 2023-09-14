import 'package:flutter/material.dart';

class CircleProfileImage extends StatelessWidget {
  const CircleProfileImage({
    super.key,
    required this.userImage,
  });
  final String userImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 4, color: Colors.white)),
      child: CircleAvatar(radius: 100, backgroundImage: AssetImage(userImage)),
    );
  }
}
