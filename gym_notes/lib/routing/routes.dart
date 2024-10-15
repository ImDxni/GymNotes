import 'package:GymNotes/layouts/app_view.dart';
import 'package:GymNotes/pages/home_page.dart';
import 'package:GymNotes/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const String routeHome = '/home';
const String routeLogin = '/login';
const String routeContacts = '/contacts';

final navKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: routeHome,
      builder: RouteGenerator.generateRoute,
    ),
    GoRoute(
      path: routeLogin,
      builder: RouteGenerator.generateRoute,
    ),
  ],
);

class RouteGenerator {
  static Widget generateRoute(BuildContext context, GoRouterState state) {
    Widget page;

    switch (state.path) {
      case routeHome:
        page = HomePage();
      case routeLogin:
        page = LoginPage();
      default:
        return LoginPage();
    }

    if(state.path != routeLogin){
      return AppView(child: page);
    }

    return page;
  }
}
