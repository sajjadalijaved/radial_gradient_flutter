import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'LinearGradient',
    home: Newapp(),
  ));
}

class Newapp extends StatelessWidget {
  const Newapp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LinearGradient',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontStyle: FontStyle.italic),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Burger.jpg'),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 10),
                          blurRadius: 7,
                          spreadRadius: 7)
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black54],
                      stops: [0.5, 0.9],
                    ))),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('Burger Shop',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Colors.white30)),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.teal,
              ))
        ],
      ),
      drawer: Drawer(),
    );
  }
}
