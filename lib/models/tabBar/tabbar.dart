import 'package:flutter/material.dart';

class MyTabBarWidget extends StatefulWidget {
  @override
  State<MyTabBarWidget> createState() => _MyTabBarWidgetState();
}

class _MyTabBarWidgetState extends State<MyTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text('Powerful TabBar Example'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Isi tab pertama
            Center(child: Text('Home Tab')),
            
            // Isi tab kedua
            Center(child: Text('Search Tab')),
            
            // Isi tab ketiga
            Center(child: Text('Profile Tab')),
          ],
        ),
      ),
    );
  }
}