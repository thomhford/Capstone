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
          title: Text('Custom Dropdown Example'),
        ),
        body: Center(
          child: CustomDropdown(),
        ),
      ),
    );
  }
}

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showCustomDropdown(context);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              selectedValue,
              style: TextStyle(fontSize: 18),
            ),
            Icon(Icons.arrow_drop_down, size: 30),
          ],
        ),
      ),
    );
  }

  void _showCustomDropdown(BuildContext context) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomLeft(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: <PopupMenuItem<String>>[
        _buildCustomPopupMenuItem('Option 1'),
        _buildCustomPopupMenuItem('Option 2'),
        _buildCustomPopupMenuItem('Option 3'),
      ],
    ).then<void>((String? newValue) {
      if (newValue != null) {
        setState(() {
          selectedValue = newValue;
        });
      }
    });
  }

  PopupMenuItem<String> _buildCustomPopupMenuItem(String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          value,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
