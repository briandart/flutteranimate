import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class EverythingView extends StatelessWidget {
  static FragmentShader? shader;

  const EverythingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered Animations Tip')),
      body:ListView.builder(
          itemBuilder: (context, index){
            return Animate(
              effects: const[ScaleEffect(begin: Offset(0.8,0.8))],
              delay: Duration(milliseconds: 100 * min(index, 8)),//use min to cap delay
              child: ListTile(
                title: Text('Item $index'),
                subtitle: Text('Subtitle $index'),
                leading: CircleAvatar(child: Text('$index')),
                trailing: const Icon(Icons.arrow_back_ios),
              ),
            );
          }
      ) ,
    );
  }
}