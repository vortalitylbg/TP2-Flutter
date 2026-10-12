import 'package:flutter/material.dart';

class AppBar_Principal extends StatefulWidget implements PreferredSizeWidget {
  const AppBar_Principal({super.key, required this.title, this.actions = const []});

  final String title;
  final List<Widget> actions;
  
  @override
  State<AppBar_Principal> createState() => _AppBar_PrincipalState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBar_PrincipalState extends State<AppBar_Principal> {
  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {

          },
        ),
        ...widget.actions,
      ],
    );
  }
}