import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Flutter Demo App')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32.0),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.amberAccent,
                  ),
                ),
                SizedBox(width: 32,),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.indigo,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                    )),
                  ),
                ),
                SizedBox(width: 32,),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                      ),
                      color: Colors.purpleAccent,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue, width: 5),
                  image: DecorationImage(
                    image: AssetImage("images/dart.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Hello World",
                    style: GoogleFonts.lobster(
                      decoration: TextDecoration.underline,
                      fontSize: 50,
                      color: Colors.purple,
                      fontStyle: FontStyle.italic,
                    ), //TextStyle
                  ), //GoogleFonts
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
