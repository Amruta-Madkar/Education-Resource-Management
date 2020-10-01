
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

  
//import 'package:app_review/app_review.dart'; 
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
import 'package:rating_dialog/rating_dialog.dart';
   

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  double rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("App Rating stars")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Library First :  'Smooth Star Rating' ",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
             
              
              RaisedButton(
                onPressed: () {
                  show();
                },
                child: Text("Rate Us"),
              )
            ],
          ),
        ));
  }
  void show() {
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: const Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ), // set your own image/icon widget
            title: "We Want your Feedback!",
            description: "Tap a star to give your rating.",
            submitButton: "SUBMIT",
            alternativeButton: "Contact us instead?", // optional
            positiveComment: "We are so happy to hear 😍", // optional
            negativeComment: "We're sad to hear 😭", // optional
            accentColor: Colors.blue, // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
              // TODO: open the app's page on Google Play / Apple App Store
            },
            onAlternativePressed: () {
              print("onAlternativePressed: do something");
              // TODO: maybe you want the user to contact you instead of rating a bad review
            },
          );
        });
  }
}
// In this snippet, I'm giving a value to all parameters.
// Please note that not all are required (those that are required are marked with the @required annotation).
