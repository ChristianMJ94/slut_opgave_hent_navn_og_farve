import 'package:flutter/material.dart';
import 'variables.dart';

selector? _selector = selector.Mother;

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 20),
        ),
        Text(
          'Write the name of your.....',
        ),
        ListTile(
          title: const Text('Mother'),
          leading: Radio<selector>(
            value: selector.Mother,
            groupValue: _selector,
            onChanged: (selector? value) {
              setState(() {
                _selector = value;
                valg = "Mother";
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Father'),
          leading: Radio<selector>(
            value: selector.Father,
            groupValue: _selector,
            onChanged: (selector? value) {
              setState(() {
                _selector = value;
                valg = "Father";
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Cat'),
          leading: Radio<selector>(
            value: selector.Cat,
            groupValue: _selector,
            onChanged: (selector? value) {
              setState(() {
                _selector = value;
                valg = "Cat";
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Dog'),
          leading: Radio<selector>(
            value: selector.Dog,
            groupValue: _selector,
            onChanged: (selector? value) {
              setState(() {
                _selector = value;
                valg = "Dog";
              });
            },
          ),
        ),
        Row(children: [
          Expanded(
            child: Text(
              "${valg}'s name:",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: TextField(
              onChanged: (text) {
                name = text;
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10, bottom: 0, right: 0, top: 0),
            ),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(left: 0, bottom: 10, right: 0, top: 10),
        ),
        ElevatedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context, name);
          },
          child: Text('SEND'),
        ),
      ])),
    );
  }
}
