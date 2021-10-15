import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(71, 81, 109, 1),
          centerTitle: true,
          title: Text('Профиль',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app_outlined),
              onPressed: null,
              disabledColor: Colors.white,
              iconSize: 30,
            ),
          ],
        ),
          body: Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.only(bottom: 20),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                "Имя",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(46, 42, 73, 1),
                                ),
                              ),
                            )
                        ),
                        Column (
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 5, right: 20, bottom: 15),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Курьер                              Изменить',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  fillColor: Color.fromRGBO(46, 42, 73, 220),
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(46, 42, 73, 1),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                "Телефон",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(46, 42, 73, 1),
                                ),
                              ),
                            )
                        ),
                        Column (
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 5, right: 20, bottom: 30),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '+7077077777',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  fillColor: Color.fromRGBO(46, 42, 73, 220),
                                  filled: true,
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(46, 42, 73, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                      ElevatedButton(
                        onPressed:(){ },
                        child: const Text('История добавления товара'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(71, 81, 109, 1),
                          minimumSize: Size(355, 50),
                          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  )
                //
              ],
            ),
          ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: 1,
          items: [
            Icon(Icons.home, size: 30, color: Color.fromRGBO(71, 81, 109, 1)),
            Icon(Icons.qr_code, size: 30, color: Colors.white),
            Icon(Icons.person, size: 30, color: Color.fromRGBO(44,149,231,1)),
          ],
          buttonBackgroundColor: Color.fromRGBO(71, 81, 109, 1),
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          onTap: null
        ),
      ),
    );
  }
}

