import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Thioro',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.settings,
            ),
          ],
          leading: Icon(
            Icons.border_clear,
            color: Colors.yellow,
          ),
        ),
        // body: Column(
        //   children: <Widget>[
        //     Row(
        //       children: <Widget>[
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.teal,
        //         ),
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.lime,
        //         ),
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.indigo,
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: <Widget>[
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.orange,
        //         ),
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.green,
        //         ),
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.black,
        //         ),
        //         Container(
        //           width: 100.0,
        //           height: 100.0,
        //           color: Colors.purple,
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        // body: Center(
        //   child: RaisedButton(
        //     color: Colors.teal,
        //     child: Text('Click Me'),
        //     onPressed: () {
        //       print('Thioro');
        //     },
        //   ),
        // ),
        // body: Center(
        //   child: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
        // ),
        // body: Center(
        //   child: FlatButton(
        //     color: Colors.blue,
        //     child: Icon(Icons.flash_on),
        //     onPressed: () {
        //       print('Thiore');
        //     },
        //   ),
        // ),
        // body: FloatingActionButton(
        //   backgroundColor: Colors.red,
        //   child: Icon(Icons.add),
        //   onPressed: null,
        // ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: null,
        // ),
        // body: GestureDetector(
        //   child: Center(
        //     child: Container(
        //       width: 100.0,
        //       height: 100.0,
        //       color: Colors.yellow,
        //     ),
        //   ),
        //   onLongPress: () {
        //     print('you click me');
        //   },
        // ),
        // body: ListView(
        //   children: <Widget>[
        //     Container(
        //       height: 250,
        //       width: 250,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 250,
        //       width: 250,
        //       color: Colors.teal,
        //     ),
        //     Container(
        //       height: 250,
        //       width: 250,
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       height: 250,
        //       width: 250,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 250,
        //       width: 250,
        //       color: Colors.blue,
        //     ),
        //   ],
        // ),
        // body: Center(
        //   child: Image.network(
        //       'https://png.pngtree.com/png-clipart/20190517/original/pngtree-instagram-icon-png-image_3584853.jpg'),
        // ),

        // body: Center(
        //   child: Image.asset('images/wone.jpg'),
        // ),
      ),
    );
  }
}
