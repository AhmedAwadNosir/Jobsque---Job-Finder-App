import 'package:flutter/material.dart';

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({
    super.key,
    @required this.leftPart,
    @required this.rightPart,
  });
  final Widget? leftPart;
  final Widget? rightPart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftPart ?? Container(),
          rightPart ?? Container(),
        ],
      ),
    );
  }
}
