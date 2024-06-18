import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String dropdownvalue = 'User Type';

  // List of items in our dropdown menu
  var items = [
    'Buyer',
    'Farmer',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 5, 0, 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Text('User Type'),
          DropdownButton(
            // Initial Value
            // style: const TextStyle(height: 10),
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ],
      ),
    );
  }
}
