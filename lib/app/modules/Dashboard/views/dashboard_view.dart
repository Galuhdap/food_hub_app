import 'package:aslabflutter_app/app/modules/Cart/views/cart_view.dart';
import 'package:aslabflutter_app/app/modules/Favorites/views/favorites_view.dart';
import 'package:aslabflutter_app/app/modules/Orders/views/orders_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
              child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              OrdersView(),
              CartView(),
              FavoritesView(),
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Color(0xfffFE724C),
            unselectedItemColor: Color(0xfffD3D1D8),
            iconSize: 30,
            backgroundColor: Colors.black,
            onTap: controller.changetabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_rounded),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded),
                label: 'My Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: 'Bookings',
              ),
            ],
          ),
        );
      },
    );
  }
}
