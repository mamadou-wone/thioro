import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Thioro(),
    );
  }
}

class Thioro extends StatefulWidget {
  @override
  _ThioroState createState() => _ThioroState();
}

class _ThioroState extends State<Thioro> {
  Color scaffoldColor = Colors.white;
  Color textColor = Colors.black;
  Color cicleColor = Colors.orange[300];
  Icon darkIcon = Icon(
    Icons.brightness_3,
    size: 100.0,
  );
  double lightElevation = 0.0;
  double darkElevation = 0.0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        centerTitle: true,
        title: Text(
          'Favorite Theme',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        // Le padding me permet de définir la position de mes widgets
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // *C'est un widget qui nous permet d'avoir le rendu d'un rond
              CircleAvatar(
                backgroundColor: cicleColor,
                radius: 60.0,
                child: scaffoldColor == Colors.white ? null : darkIcon,
              ),
              // if(scaffoldColor == Colors.white){
              //   child: null;
              // }else{
              //   child: darkIcon;
              // }
              // SizeBox ici me permet de définir un espace vertical ou horizontale entre mes widgets
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Choisissez votre théme favori !',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              SizedBox(
                height: 70.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: <Widget>[
                    RawMaterialButton(
                      child: Text(
                        'Light',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      fillColor: scaffoldColor != Colors.white
                          ? Colors.grey[200]
                          : Colors.white,
                      splashColor: Colors.blue,
                      elevation: lightElevation,
                      shape: StadiumBorder(),
                      onPressed: () {
                        setState(() {
                          scaffoldColor = Colors.white;
                          lightElevation = 15.0;
                          darkElevation = 0.0;
                          textColor = Colors.black;
                          cicleColor = Colors.orange[300];
                        });
                      },
                    ),
                    SizedBox(
                      width: 80.0,
                    ),
                    RawMaterialButton(
                      child: Text(
                        'Dark',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      fillColor: scaffoldColor == Colors.white
                          ? Colors.grey[200]
                          : Colors.white,
                      splashColor: Colors.blue,
                      elevation: darkElevation,
                      shape: StadiumBorder(),
                      onPressed: () {
                        setState(() {
                          scaffoldColor = Colors.grey[800];
                          darkElevation = 15.0;
                          lightElevation = 0.0;
                          textColor = Colors.white;
                          cicleColor = Colors.blue[900];
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[700],
        child: Icon(Icons.arrow_forward),
        onPressed: null,
      ),
    );
  }
}
