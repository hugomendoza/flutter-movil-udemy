import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introducción a riverpod',
    link: '/counter-river',
    icon: Icons.plus_one_rounded
  ),
    
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios bottones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),


  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Porgress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
  
  MenuItem(
    title: 'Snackbars y Dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'Statefull widhet animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de conttroles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),

  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded
  ),

  MenuItem(
    title: 'InifiniteScroll y Pull',
    subTitle: 'Listas infinitas y Pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded
  ),

  MenuItem(
    title: 'InifiniteScroll y Pull',
    subTitle: 'Listas infinitas y Pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded
  ),

];