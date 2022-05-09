import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ItaList',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'nanotecc | smartium'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _nossaLista = [
    'Nara',
    'Cataldo',
    'Luiz',
    'Moraes',
    'Thiago',
    'Campeão',
    'Itamar',
    'Silva'
  ];

  int _counter = 0;
  Icon _icon = const Icon(Icons.add);
  Color _btnColor = Colors.deepPurple;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _counter = _counter % _nossaLista.length;
      _counter < 7
          ? _icon = const Icon(Icons.add)
          : _icon = const Icon(Icons.refresh);
      _counter < 7 ? _btnColor = Colors.deepPurple : _btnColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<int, String> map = _nossaLista.asMap();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$map\n',
              style: const TextStyle(
                  fontFamily: 'Monoid',
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
            Text(
              '\n\nITEM ${(_counter + 1)}:',
              style: const TextStyle(
                  fontFamily: 'Monoid',
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            Text(
              _nossaLista[_counter],
              style: const TextStyle(
                  fontFamily: 'Type', fontSize: 70, color: Colors.white70),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: _btnColor,
        child: _icon,
      ),
    );
  }
}
