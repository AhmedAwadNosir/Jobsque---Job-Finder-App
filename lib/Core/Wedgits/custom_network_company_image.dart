import 'package:flutter/material.dart';

class CustomNetworkCompanyImage extends StatelessWidget {
  const CustomNetworkCompanyImage({
    super.key,
    required this.companyImage,
    this.hieght,
    this.width, this.redius,
  });

  final String companyImage;
  final double? hieght;
  final double? width;
  final double? redius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(redius??8),
      child: SizedBox(
        height: hieght ?? 40,
        width: width ?? 40,
        child: Image.network(companyImage),
      ),
    );
  }
}
