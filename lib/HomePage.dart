import 'package:ERM/Chatbot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

  
//import 'package:app_review/app_review.dart'; 
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
import 'package:rating_dialog/rating_dialog.dart';
   

import 'Rating.dart';
import 'Schedule.dart';



/*------------------------------------------------------------Homepage-----------------*/
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        width: 220,
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                          
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 33.0, top: 3),
                        child: Text(
                          'Hi, User!',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        
                      )
                    ],
                    

                  ),
                  
                ),
                
                
              ),
             Stack(
               children: <Widget>[
                 
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   
                   child: Center(
                     
                     child: Image(
                       fit: BoxFit.contain,
                       height: 300,
                       

                       image: AssetImage("assets/images/onbg.jpg",),
                     ),
                   )
                   ,
                 ),
                 
                 Padding(
                   padding: const EdgeInsets.only(top:200.0),
                   
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       GestureDetector(
                         child: _buildChatbot(),
                         onTap:(){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Chatbot()));
                         },


                       ),
                       GestureDetector(
                         onTap:(){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule()));
                         },
                         child: _buildCard(
                             MaterialCommunityIcons.calendar_month, 'Schedule'),

                       ),

                     ],
                   ),
                   
                 ), 
               ],

             ),




            ],
          ),
        ),
        
      ),
    );
  }


  Widget _buildChatbot() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 190,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
           
                    
          children:<Widget> [
            
            
            
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 130,
                width: 130,
                child: Image(
                  image: AssetImage('assets/images/chatbot.png'),
                  fit: BoxFit.cover,
                ),
              ),
              
            ),
       
            Text(
              'Chatbot',
              style: TextStyle(fontSize: 20),
            )
          
          ]
 
      ),
        
      )
      
           
    );
    
          
  }
  }


  Widget _buildCard(IconData iconData, String imgName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 190,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 90,
              color: Color(0xff0B96F9),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              imgName,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        
      ),
      
      
    );
    
  }

 /* class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
         
         
        child: Column(
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: <Widget>[
          
            RaisedButton(
              
              textColor: Colors.white,
              color: Color(0xFF0D47A1),
              
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
          
              child: Text('Rate Us'),
              
              
              onPressed: () {
                navigateToSubPage(context);
              },
            )
          ],
        ),
      );
    
  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}*/

  


