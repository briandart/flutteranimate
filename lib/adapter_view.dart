import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AdapterView extends StatelessWidget {
  const AdapterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('This is the AdapterView')),
      body: ListView.builder(itemBuilder: (context, index){
        return Animate(
          effects: const [ScaleEffect(begin: Offset(0.8,0.8))],
          delay: Duration(milliseconds: 100 * index),//use the index value to stagger
          child: ListTile(
            title: Text('Item $index'),
            subtitle: Text('Subtitle $index'),
            leading: CircleAvatar(child: Text('$index')),
            trailing: const Icon(Icons.arrow_back_ios),
          ),
        );
      })
    );
  }
}