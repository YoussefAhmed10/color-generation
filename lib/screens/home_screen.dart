import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 2),
        curve: Curves.linear,
        color: _color,
        child: Center(
          child: TextButton(
            onPressed: _generateColor,
            child: const Text(
              'Hey There',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _generateColor() {
    setState(() {
      _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }
}
