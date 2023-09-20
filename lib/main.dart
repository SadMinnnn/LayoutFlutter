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
        body: Center(
          child: Card(
            elevation: 5,
            child: Container(
              width: 500,
              height: 550,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Oeschinen Lake Campground',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Kandersteg, Switzerland',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '41',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 480,
                            child: Text(
                              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                              'Alps. Situated 1,578 meters above sea level, it is one of the '
                              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                              'half-hour walk through pastures and pine forest, leads you to the '
                              'lake, which warms to 20 degrees Celsius in the summer. Activities '
                              'enjoyed here include rowing, and riding the summer toboggan run.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 600.0,
                      height: 240.0, // Altura de la imagen de fondo
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/0/0d/Oeschinen_Lake%2C_Kandersteg%2C_Switzerland_%28Unsplash%29.jpg',
                          ),
                          fit: BoxFit
                              .fill, // Ajuste de la imagen para llenar el espacio
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Botones de acción
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para el botón "Call"
                          },
                          icon: Icon(Icons.call),
                          label: Text('Call'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para el botón "Route"
                          },
                          icon: Icon(Icons.directions),
                          label: Text('Route'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para el botón "Share"
                          },
                          icon: Icon(Icons.share),
                          label: Text('Share'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
