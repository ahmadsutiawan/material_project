// homePage.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Complete Dropdown Example'),
        ),
        body: Center(
          child: _HomePage(), // Gunakan _HomePage di sini
        ),
      ),
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  String? selectedValue;
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyDropdownWidget(), // Gunakan MyDropdownWidget di sini
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Your action when the button is pressed
            print('Selected Value: $selectedValue');
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}

class MyDropdownWidget extends StatefulWidget {
  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

abstract class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  // ... (sama seperti kode sebelumnya)
}
