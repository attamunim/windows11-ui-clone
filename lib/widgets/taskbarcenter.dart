import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TaskBarCenter() {
  return Material(
    color: Colors.transparent,
    child: Row(
      children: [
        GestureDetector(
            onTap: () {
              print('hello');
            },
            child: Image.asset('assets/icons/start.png')),
      ],
    ),
  );
}
