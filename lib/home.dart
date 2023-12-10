import 'package:counter_with_provider_state_management/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CountProvider>(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${model.counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const SecondScreen(),
                    ),
                  );
                },
                child: const Icon(Icons.abc_outlined),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: model.incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ));
  }
}
