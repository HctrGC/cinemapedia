import 'package:flutter/material.dart';

import 'package:cinemapedia/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  final Widget childView;

  const HomeScreen({
    super.key, 
    required this.childView
  });

  static const String name = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childView,
      bottomNavigationBar: CustomBottomNavigationBar()
    );
  }
}

