import 'package:flutter/material.dart';
import 'package:sample/routes/index.dart';

import 'beagle.dart';

class MainNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainNavigatorState();
}

class MainNavigatorState extends State<MainNavigator> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  int currentIndex = 0;
  int numberOfItemsInCart = 0;

  Route _onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments == null
      ? <String, String>{}
      : settings.arguments as Map<String, String>;
    WidgetsBinding.instance?.addPostFrameCallback((_) => setState(() =>
      currentIndex = routes.keys.toList(growable: false).indexOf(settings.name!)
    ));
    return MaterialPageRoute(builder: (_) => routes[settings.name]!(arguments));
  }

  _buildNavigator() {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Navigator(
          key: _navigatorKey,
          initialRoute: "cart",
          onGenerateRoute: _onGenerateRoute,
          //observers: [observer],
        ),
      ),
    );
  }

  _buildBottomNavBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Products'),
        BottomNavigationBarItem(
          icon: Stack(clipBehavior: Clip.none, children: [
            Icon(Icons.shopping_cart_outlined),
            Positioned(
              left: 18,
              top: -4,
              child: Opacity(opacity: numberOfItemsInCart > 0 ? 1 : 0, child: Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  '$numberOfItemsInCart',
                  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              )),
            ),
          ]),
          label: 'Cart',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'Exit'),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey[600],
      showUnselectedLabels: true,
      onTap: (index) {
        _navigatorKey.currentState!.pushNamed(routes.keys.elementAt(index));
      },
    );
  }

  updateCartCount(int numberOfElementsInCart) {
    setState(() {
      this.numberOfItemsInCart = numberOfElementsInCart;
    });
  }

  @override
  void initState() {
    beagleService.globalContext.set([], 'cart');
    _buildNavigator();
    _buildBottomNavBar();
    super.initState();
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
