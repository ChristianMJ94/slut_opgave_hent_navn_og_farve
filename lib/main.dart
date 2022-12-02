import 'package:flutter/material.dart';
import 'name.dart';
import 'color.dart';
import 'variables.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP3 project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _gotoNameActivity() async {
    var message =
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const SecondRoute();
    }));
    setState(() {
      name = message;
    });
  }

  void _gotoColorActivity() async {
    var message =
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const ThirdRoute();
    }));
    setState(() {
      hexColor = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 20),
              child: Text("Get Ones Name and Color"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: _gotoNameActivity,
              child: Text('Set Name'),
            ),
            if (hexColor == '000000') ...[
              Padding(
                padding:
                EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 20),
                child: Text("$valg name: $name"),
              ),
            ] else ...[
              Padding(
                padding:
                EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 20),
                child: Text(
                  '$valg name: $name',
                  style:
                  TextStyle(backgroundColor: HexColor.fromHex('$hexColor')),
                ),
              ),
            ],
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: _gotoColorActivity,
              child: Text('Set Color'),
            ),
          ],
        ),
      ),
    );
  }
}
