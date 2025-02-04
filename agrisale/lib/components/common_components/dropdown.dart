import 'package:flutter/material.dart';

const List<String> list = <String>['Buyer', 'Farmer'];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key, required this.userTypeController});

  final TextEditingController userTypeController;

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      controller: widget.userTypeController,
      label: const Text('UserType'),
      width: 340,
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
