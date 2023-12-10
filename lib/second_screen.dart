import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'count_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CountProvider>(
      builder: (context, model, child) => 
      Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              Text('${model.counter}')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.incrementCounter,
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
