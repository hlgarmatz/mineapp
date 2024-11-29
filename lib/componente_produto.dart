import 'package:flutter/material.dart';

class ComponenteProduto extends StatelessWidget {
  String imagem;
  ComponenteProduto({super.key, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 125,
      margin: const EdgeInsets.only(left: 15, bottom: 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.grey.shade100,
        image: DecorationImage(
          image: NetworkImage(imagem),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
