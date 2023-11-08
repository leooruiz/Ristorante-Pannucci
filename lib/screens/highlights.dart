import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});
  final List items = destaques;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomScrollView(),
    );
  }
}
