import 'package:flutter/material.dart';

    // entry point for the app, 
    // the => operator is shorthand for {} when there is only one line of code
    void main() => runApp(MyApp());

    // the root widget of our application
    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("Building layouts"),
            ),
            body: myLayoutWidget(),
          ),
        );
      }
    }

    // replace this method with code in the examples below
    Widget myLayoutWidget() {
      // wrap everything in a purple container
      return Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.purple[800],
            Colors.purple[700],
            Colors.purple[600],
            Colors.purple[400],
          ],
        ),
          border: Border.all(),
          borderRadius: BorderRadius.circular(10.0)
        ),

        // column of three rows
        child: Column(

          // this makes the column height hug its content
          mainAxisSize: MainAxisSize.min,
          children: [

            // first row
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child:
                  Icon(Icons.hotel,
                    color: Colors.green,
                  ),
                ),
                Text(
                    'Rent Due - September',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 140.0, top: 50.0),
                  child: Icon(Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
                
              ],
            ),
        
            // second row (single item)
            Row (
              children:[
                Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 10,
              ),
                  child:Text('Pay now to avoid late payment fees!',
                      style: TextStyle(
                      color: Colors.white,
                ),
                
              ),
            ),
            ],
            ),
          ],
        ),
      );
      
    }