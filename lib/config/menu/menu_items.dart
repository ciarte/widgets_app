import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios Botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_rounded,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars & Dialogs',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Statefull widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'Ui Controls + Tiles',
      subtitle: 'UI Controles en Flutter',
      link: '/ui-controls',
      icon: Icons.dashboard_customize_sharp),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Turorial de nuestra App',
      link: '/tutorial',
      icon: Icons.abc_rounded),
];
