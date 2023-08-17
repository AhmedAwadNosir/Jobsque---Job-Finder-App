import 'package:flutter/material.dart';

OutlineInputBorder borderDecoration({required int borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color(borderColor),
      ),
    );
  }