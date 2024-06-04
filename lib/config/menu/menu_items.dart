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
      title: 'Contador',
      subtitle: 'Contador usando Riverpod',
      link: '/counter',
      icon: Icons.add),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars & Dialogs',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline_rounded),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Animated Stateful widget',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'UI Controls + Titles',
      subtitle: 'Una seríe de controles típicos para la UI',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subtitle: 'Pequeño onboarding de la app',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItem(
      title: 'Scroll infinito & pull refresh',
      subtitle: 'Listas infinitas & pull to refresh',
      link: '/infinite-scroll',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Cambiar tema',
      subtitle: 'Cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
