import 'package:flutter/material.dart';
import 'package:flutter_tp2/screens/main_app/accueil_app.dart';
import 'package:flutter_tp2/screens/main_app/settings_app.dart';
import 'package:flutter_tp2/widgets/appbar.dart';
import 'package:flutter_tp2/widgets/bottom_bar.dart' as app_navigation;

class PageLogP extends StatefulWidget {
  const PageLogP({super.key});

  @override
  State<PageLogP> createState() => _PageLogPState();
}

class _PageLogPState extends State<PageLogP> {
  int currentPageIndex = 0;

  Widget _buildCurrentPage() {
    return switch (currentPageIndex) {
      0 => const AccueilApp(),
      1 => const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.calendar_today_outlined, size: 48),
              SizedBox(height: 12),
              Text('Rendez-vous'),
            ],
          ),
        ),
      2 => const SettingsApp(),
      _ => const Center(child: Text('Page introuvable')),
    };
  }

  Widget _buildBottomNavigationBar() {
    return app_navigation.BottomNavigationBar(
      currentIndex: currentPageIndex,
      onDestinationSelected: (index) {
        setState(() => currentPageIndex = index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_Principal(title: "Gestion des rendez-vous"),
      body: SafeArea(
        child: _buildCurrentPage(),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}