import 'package:flutter/material.dart';

import 'package:material_project/models/tabBar/tabbar.dart';

import 'models/interactive/dropdown/dropdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      width: width,
      child: MyDropdownWidget(),
    );
  }
}
