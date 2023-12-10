import 'package:counter_with_provider_state_management/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => CountProvider()),
        ),
      ],
      child: const MaterialApp(
        home: MyHomePage(title: 'Flutter Default app with Provider'),
      ),
    );
  }
}
