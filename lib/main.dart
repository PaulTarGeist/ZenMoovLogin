import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextStyle style = TextStyle(fontFamily: 'happy', fontSize: 20.0);
  Color gradientStart = Colors.blueGrey[50];
  Color gradientEnd = Colors.blueGrey[100];

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(115.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(100.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.cyan[300],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            textScaleFactor: 1.2,
            style: style.copyWith(
                color: Colors.orange[200],
                fontFamily: 'arthique',
                fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [gradientStart, gradientEnd],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child: Image.asset(
                    "assets/icon.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20.0),
                emailField,
                SizedBox(height: 20.0),
                passwordField,
                SizedBox(
                  height: 20.0,
                ),
                loginButon,
                SizedBox(
                  height: 60.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

