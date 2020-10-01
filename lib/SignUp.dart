import 'package:ERM/Chatbot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'HomePage.dart';
import 'LoginPage.dart';
import 'Schedule.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'dart:io';
//import 'package:universal_html/html.dart';


class SignUp extends StatefulWidget{
   SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{
  //API call*************************************************************************
/*_getUserApi() async {
  var httpClient = new HttpClient();
  /*var uri = new Uri.https('https://education-resource-management.herokuapp.com/');
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  var responseBody = await response.transform(UTF8.decoder).join();
  return responseBody;*/
  const url = 'https://education-resource-management.herokuapp.com/User';
final const response = await http.get(url);
print(response.body);
 
  // Sending a POST request
const url = 'https://education-resource-management.herokuapp.com/User';
const payload = {online: false};
const response = await http.post(url, body: payload);
print(response.statusCode); // 200

 

// Sending a POST request with headers
const headers = {'Content-Type': 'application/json'};
const response_1 = await http.post(url, headers: headers, body: payload);
print(response_1.statusCode); // 200

}
  
 String url= 'https://education-resource-management.herokuapp.com/User';
Future<String> LOGIN() async {
  var response= 
  await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  
  print(response.body);
}
 /* // Sending a GET request
const url = 'https://education-resource-management.herokuapp.com/User';
final const response = await http.get(url);
print(response.body);
 
  // Sending a POST request
const url = 'https://education-resource-management.herokuapp.com/User';
const payload = {online: false};
const response = await http.post(url, body: payload);
print(response.statusCode); // 200

 

// Sending a POST request with headers
const headers = {'Content-Type': 'application/json'};
const response_1 = await http.post(url, headers: headers, body: payload);
print(response_1.statusCode); // 200
}*/************************************************************************************************/

 

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
        padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
        
        //margin: new EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/img/bg.jpg"), 
        fit: BoxFit.cover),),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/img/logo.png',height: 50.0,width: 150.0,),  
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
              "SIGN UP",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              ),
            ),
            
            SizedBox(height: 20.0,),
            buildTextField("FullName"),
           
            SizedBox(height: 20.0,),
            buildTextField("Email"),
            
            SizedBox(height: 20.0,),
            buildTextField("Mobile"),
            
            SizedBox(height: 20.0,),
            buildTextField("Password"),
           
        
            SizedBox(height: 20.0,),
            
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
              Navigator.pushNamed(context, 'SignIn');
            },
                      child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'SIGN IN',
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
          borderRadius: BorderRadius.circular(25.0),
          
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
           shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
          
          
          child: Text(
            "SIGN UP",
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
    Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
  }
}


 //POST Request***********************************************************************
 /* void main() async {
 var url = 'https://education-resource-management.herokuapp.com/User';
var data = { 'online' : 'false' };
  
   HttpRequest.request(
    url,
    method: 'POST',
    sendData: json.encode(data),
    requestHeaders: {
      'Content-Type': 'application/json; charset=UTF-8'
    }
  )
  .then((resp) {
    print(resp.responseUrl);
    print(resp.responseText);           
  });
  }********************************************************************************************/

 


