import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/food_item.dart';
import 'package:panucci_ristorante/cardapio.dart';

class FoodMenu extends StatelessWidget {
  FoodMenu({super.key});
  final List items = comidas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 32,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return FoodItem(
                itemTitle: items[index]['name'],
                itemPrice: items[index]['price'],
                imageURI: items[index]['image'],
              );
            }, childCount: items.length),)
          ],
        ),
      ),
    );
  }
}
