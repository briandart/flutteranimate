import 'dart:ui';

import 'package:flutter/material.dart';

class EverythingView extends StatelessWidget {
  static FragmentShader? shader;

  const EverythingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This is the EverythingView'),
    );
  }
}