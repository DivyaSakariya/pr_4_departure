import 'package:flutter/material.dart';

Widget myDrawer =  Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_home.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text('Bhagavad Gita'),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.home,
        ),
        title: const Text('Page 1'),
        onTap: () {
        },
      ),
      ListTile(
        leading: const Icon(
          Icons.train,
        ),
        title: const Text('Page 2'),
        onTap: () {
        },
      ),
    ],
  ),
);