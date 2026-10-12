import 'package:flutter/material.dart';
import 'package:flutter_tp2/screens/main_app/accueil_app.dart';
import 'package:flutter_tp2/widgets/appbar.dart';

class PageLogP extends StatefulWidget {
  const PageLogP({super.key});

  @override
  State<PageLogP> createState() => _PageLogPState();
}

class _PageLogPState extends State<PageLogP> {
  int currentPageIndex = 0;
  Widget? currentBody;

  @override
  void initState() {
    super.initState();
    currentBody = AccueilApp();
  }

  void afficherNouvellePage(Widget nouvellePage) {
    setState(() {
      currentBody = nouvellePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_Principal(title: "Gestion des rendez-vous"),
      
      body: SafeArea(
        child: currentBody ?? const Center(child: Text('Page introuvable')),
      ),
      
    );
  }
}