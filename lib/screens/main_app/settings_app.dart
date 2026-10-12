import 'package:flutter/material.dart';
import 'package:flutter_tp2/utils/themeController.dart';

class SettingsApp extends StatefulWidget {
  const SettingsApp({super.key});

  @override
  State<SettingsApp> createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  bool _valeurSwitch = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          secondary: const Icon(Icons.notifications_outlined),
          title: Text(_valeurSwitch ? 'Passer en mode sombre' : 'Passer en mode clair'),
          value: _valeurSwitch,
          onChanged: (bool value) {
            setState(() {
              _valeurSwitch = value;
              themeController.toggleTheme();
            });
          },
          
        ),
      ],
    );
  }
}