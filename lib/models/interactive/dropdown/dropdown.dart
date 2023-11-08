import 'package:flutter/material.dart';

class MyDropdownWidget extends StatefulWidget {
  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  late String selectedValue;
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButtonFormField<String>(
          value: selectedValue,
          hint: Text('Select an option'),
          onChanged: (String? value) {
            setState(() {
              selectedValue = value!;
            });
          },
          items: options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: 'Dropdown Label',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select an option';
            }
            return null;
          },
        ),
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