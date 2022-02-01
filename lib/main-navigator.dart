import 'package:flutter/material.dart';
import 'package:sample/routes/index.dart';

class MainNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainNavigator();
}

class _MainNavigator extends State<MainNavigator> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  int currentIndex = 0;

  Route _onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => routes[settings.name]!(settings.arguments));
  }

  _buildNavigator() {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Navigator(
          key: _navigatorKey,
          initialRoute: "products",
          onGenerateRoute: _onGenerateRoute,
        ),
      ),
    );
  }

  _buildBottomNavBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Products'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'Exit'),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey[600],
      showUnselectedLabels: true,
      onTap: (index) {
        _navigatorKey.currentState!.pushNamed(routes.keys.elementAt(index));
        setState(() => currentIndex = index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: _buildBottomNavBar(),
      body: _buildNavigator(),
    );
  }
}
