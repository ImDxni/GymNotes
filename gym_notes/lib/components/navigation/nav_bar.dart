import 'package:GymNotes/routing/routes.dart';
import 'package:flutter/material.dart';

import 'nav_item.dart';

class NavBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        color: Color.fromRGBO(41, 39, 39, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(
            title: 'Home',
            routeName: routeHome,
          ),
          NavigationItem(
              title: 'Login',
              routeName: routeLogin
          ),
        ],
      ),
    );
  }
}
