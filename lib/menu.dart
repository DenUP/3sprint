import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final bool isActive;
  const Menu({super.key, required this.isActive});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.isActive ? Colors.amberAccent : Colors.red,
      ),
      onPressed: () {},
      child: Text('data'),
    );
  }
}
