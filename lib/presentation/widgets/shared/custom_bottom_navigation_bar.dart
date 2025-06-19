import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  final int pageIndex;

  const CustomBottomNavigationBar({
    super.key,
    required this.pageIndex
  });

  void onItemTap(BuildContext context, int index) {
    if (index > 2) {
      context.go('/home/0');
    }
    context.go('/home/$index');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIndex,
      onTap: (value) => onItemTap(context, value),
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Home'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Categorías'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos'
        )
      ]
    );
  }
}