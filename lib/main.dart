import 'package:flutter/material.dart';
import 'package:flutter_tp2/screens/affichage_plog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
      Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.orange.shade50,
          indicatorColor: Colors.orange,
          iconTheme: MaterialStatePropertyAll<IconThemeData?>(
            const IconThemeData(color: Colors.black),
          ),
          labelTextStyle: MaterialStatePropertyAll<TextStyle?>(
            const TextStyle(color: Colors.black),
          ),
        ),
      ),
      home: PageLogP(),
    );
  }
}

