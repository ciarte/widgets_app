import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  MenuItems(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});

  List<MenuItems> appMenuItems = [
    MenuItems(
      title: 'Botones',
      subtitle: 'Varios Botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_rounded,
    ),
    MenuItems(
      title: 'Tarjetas',
      subtitle: 'Contenedor estilizado',
      link: '/card',
      icon: Icons.credit_card,
    )
  ];
}
