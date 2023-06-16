import 'package:flutter/material.dart';
import 'package:login/components/scroll_drawer.dart';

import '../components/fixed_drawer.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ScrollDrawer(),
      appBar: AppBar(
        title: Text('Homepage'),
      ),
    );
  }
}
