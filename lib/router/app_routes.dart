import 'package:fl_component/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /* MenuOption(
        route: 'home',
        name: 'Home Screan',
        screen: const HomeScreen(),
        icon: Icons.accessibility_new), */
    MenuOption(
        route: 'listview1',
        name: 'List View1 Screan',
        screen: const Listview1Screen(),
        icon: Icons.ac_unit_rounded),
    MenuOption(
        route: 'listview1',
        name: 'List View1 Screan',
        screen: const Listview1Screen(),
        icon: Icons.ac_unit_rounded),
    MenuOption(
        route: 'listview2',
        name: 'List View2 Screan',
        screen: const Listview2Screen(),
        icon: Icons.abc),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.access_alarms),
    /* MenuOption(
        route: 'cart',
        name: 'CArt',
        screen: const CartScreen(),
        icon: Icons.accessible_sharp), */
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated screen',
        screen: const AnimatedScreen(),
        icon: Icons.animation),
    MenuOption(
        route: 'input',
        name: 'Input Screen',
        screen: const InputScreen(),
        icon: Icons.input),
    MenuOption(
        route: 'slider',
        name: 'Slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.slideshow_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      'home': (BuildContext contex) => const HomeScreen()
    }); //queda definida para que acceda al inicio de la aplicacion
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext contex) => option.screen});
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'alert': (BuildContext contex) => const AlertScreen(),
    'cart': (BuildContext contex) => const CartScreen(),
    'home': (BuildContext contex) => const HomeScreen(),
    'listview1': (BuildContext contex) => const Listview1Screen(),
    'listview2': (BuildContext contex) => const Listview2Screen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) =>
          const AlertScreen(), // la ruta que quiero renderizar por defecto
    );
  }
}
