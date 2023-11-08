import 'package:flutter/material.dart';

class MyVisibilityWidget extends StatefulWidget {
  @override
  _MyVisibilityWidgetState createState() => _MyVisibilityWidgetState();
}

class _MyVisibilityWidgetState extends State<MyVisibilityWidget> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visibility Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: isVisible,
              child: Text(
                'This is a visible text.',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text('Toggle Visibility'),
            ),
          ],
        ),
      ),
    );
  }
}