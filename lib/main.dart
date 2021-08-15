import 'package:flutter/material.dart';
import 'package:untitled/Screens/postscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostsScreen(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30),
      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
    );
    /* final ButtonStyle style2 = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 25),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        primary: Colors.grey);*/
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "mat/img/flutterlogo.png",
              width: 150,
              height: 150,
            ),
            SizedBox(height: 70),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage(_counter)),
                );
              },
              child: const Text('Log in'),
            ),
            Text("$_counter", textScaleFactor: 5),
            /*SizedBox(height: 30),
            Text(
              'Forgot password? No yawa. Tap me',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: style2,
              onPressed: () {},
              child: const Text('No Account? Sign up'),
            ),*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _incrementCounter();
          },
          child: Icon(Icons.add)),
    );
  }
}

class SecondPage extends StatelessWidget {
  int _counter;

  SecondPage(this._counter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: ListView(
        children: [Text("$_counter", textScaleFactor: 5, textAlign: TextAlign.center,)],
      ),
    );
  }
}*/
