import 'package:flutter/material.dart';

class AccueilApp extends StatefulWidget {
  const AccueilApp({super.key});

  @override
  State<AccueilApp> createState() => _AccueilAppState();
}

class _AccueilAppState extends State<AccueilApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Text(
            "Bienvenue sur l'application de gestion des rendez-vous resachev. Cette application vous permet de gérer vos rendez-vous de manière efficace et pratique.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Text(
            "Gérez vos rendez-vous simplement Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.",
          ),
        ),

        NavigationBar(
          selectedIndex: 0,
          onDestinationSelected: (int index) {
            // Handle navigation bar item selection
          },
          destinations: const <NavigationDestination>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_today),
              label: 'Rendez-vous',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Paramètres',
            ),
          ],
        ),
      ],
    );
  }
}