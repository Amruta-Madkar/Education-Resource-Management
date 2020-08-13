import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ERM/sd.dart';

import 'Schedule.dart';
import 'SignUp.dart';





class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      
      body: Container(
        padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0, bottom: 20.0),
        
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/img/bg.jpg"), 
        fit: BoxFit.cover),),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Image.asset('lib/img/logo.png',height: 100.0,width: 150.0,),  
             /*Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),*/
            
            
           /* Text(
              'Logo',
              style: TextStyle(
                font Size: 50.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico"
              ),
            ),*/
            SizedBox(height: 40.0,),
            
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              ),
            ),
            SizedBox(height: 40.0,),
            buildTextField("Email"),
            SizedBox(height: 20.0,),
            buildTextField("Password"),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Forgotten Password?",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            SubmitButton(),
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'SignUp');
            },
                      child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'SIGN UP',
                        style: TextStyle(color: Theme.of(context).primaryColor,)
                      )
                    ]),
              ),
            ),
          )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(20.0),
          
        ),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  /*Widget buildButtonContainer(){
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
       // borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
           
          colors: [
            Color(0xFF0D47A1),
            Color(0xFF0D47A1)
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );

  }*/
}
class SubmitButton extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
    height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        
      ),
      child: RaisedButton(
          color: Color(0xFF0D47A1),
          
          child: Text(
            "SUBMIT",
            style: TextStyle(
                color: Colors.white,
            fontSize: 18.0,),
          ),
          
          onPressed: () {
                navigateToSubPage(context);
              },
    ),
    );
  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Schedule()));
  }
}