import 'package:flutter/material.dart';
import 'variables.dart';

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({super.key});
  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  String dropdownvalue1 = '00';
  String dropdownvalue2 = '00';
  String dropdownvalue3 = '00';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 20),
            child: Text('$valg Color'),
          ),
          Container(
            height: 160,
            color: HexColor.fromHex(
                '$dropdownvalue1$dropdownvalue2$dropdownvalue3'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: dropdownvalue1,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: dropdownList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? items) {
                  setState(() {
                    dropdownvalue1 = items!;
                    dropdownvalue1 = items!;
                  });
                },
              ),
              DropdownButton(
                value: dropdownvalue2,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: dropdownList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? items) {
                  setState(() {
                    dropdownvalue2 = items!;
                    dropdownvalue2 = items!;
                  });
                },
              ),
              DropdownButton(
                value: dropdownvalue3,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: dropdownList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? items) {
                  setState(() {
                    dropdownvalue3 = items!;
                    dropdownvalue3 = items!;
                  });
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              var hexColor = '$dropdownvalue1$dropdownvalue2$dropdownvalue3';
              Navigator.pop(context, hexColor);
            },
            child: const Text('SEND COLOR!'),
          ),
        ]),
      ),
    );
  }
}

class HexColor {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length <= 7) buffer.write('FF');
    buffer.write(hexString.replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
