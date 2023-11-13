import 'package:flutter/material.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              'Menu',
              style: TextStyle(
                fontFamily: 'Caveat',
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {}))
        ],
      ),
    );
  }
}