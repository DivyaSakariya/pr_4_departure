import 'package:flutter/material.dart';
import 'package:pr_4_departure/controller/bottomNavigationController.dart';
import 'package:pr_4_departure/controller/theme_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationController>(
        builder: (context, provider, _) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_quote_rounded),
              label: 'Quotes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark_outlined),
              label: 'About',
            ),
          ],
          currentIndex: provider.selectedIndex,
          onTap: (index) {
            provider.onItemTapped(index);
          },
          selectedItemColor: Provider.of<ThemeController>(context).isDark
              ? Colors.deepOrangeAccent
              : Colors.black,
          unselectedItemColor: Colors.grey,
        ),
        body: provider.allScreen.elementAt(provider.selectedIndex),
      );
    });
  }
}
