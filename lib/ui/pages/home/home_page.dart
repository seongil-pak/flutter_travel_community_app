import 'package:flutter/material.dart';
import 'package:flutter_travel_community_app/ui/pages/home/widgets/home_bottom_navigation_bar.dart';
import 'package:flutter_travel_community_app/ui/pages/home/widgets/home_indexed_stack.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(),
      body: HomeIndexedStack(),
    );
  }
}
