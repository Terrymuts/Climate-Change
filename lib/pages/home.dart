import 'package:flutter/material.dart';

import '../widgets/side_menu.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Home')),
      drawer: SideMenu(),
      body: Center(child: Text('Welcome to the Image Classification Dashboard!')),
    );
  }
}
