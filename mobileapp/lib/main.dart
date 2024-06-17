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
          backgroundColor: Color.fromRGBO(17, 114, 120, 1),
          title: Text(
            'PescaFish',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fund.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 2),
              width: 287,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/mapa.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 201,
      height: 32,
      padding: EdgeInsets.all(990.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        'ooooooooooe',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

Row buildFirstRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildContainer(
        label: 'React.js',
        color: Colors.green,
        borderRadius: 8,
        textColor: Colors.yellowAccent,
        fontSize: 25,
      ),
      _buildContainer(
        label: 'oie',
        color: Colors.green,
        borderRadius: 8,
        textColor: Colors.yellowAccent,
        fontSize: 25,
      ),
    ],
  );
}

_buildContainer(
    {required String label,
    required MaterialColor color,
    required int borderRadius,
    required MaterialAccentColor textColor,
    required int fontSize}) {}
