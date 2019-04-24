

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phpsqlflutter/colors.dart';
import 'package:phpsqlflutter/main.dart';

class LoginPage extends StatefulWidget {
 

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _email;
  String _pass;
   var home = new MyApp();
  List<dynamic> data=[];

  void getHttp() async {
  try {
    print(_usernameController.text);
    print(_passwordController.text);
    FormData formData = new FormData.from({
    "user":_usernameController.text,
    "pass":_passwordController.text
    });
    String url = "http://mahmmd.info/CodeIgniter/Api/login";
    Response response = await Dio().post(url,data: formData);
    print(response);
  } catch (e) {
    print(e);
  }
} 

  void sendData() async{
    String url = "http://mahmmd.info/CodeIgniter/Api/login";
    try{
    var response = await http.post(url,body: {'user':_email,'pass':_pass});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    print("json.decode(response.body)");
    }catch(e){
      print(e);
    }
    
    // print(response.body);
    // var data = json.decode(response.body);
    // //data = data1;
    // //print(data[0]['status']);
    // setState(() {
    //   var convertDataToJson = json.decode(response.body);
    //     data = convertDataToJson['name'];
    // });
    // print(data);
    //  return "json.decode(response.body)";
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.white,
      //   brightness: Brightness.light,
        
      // ), 
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
               // Image.asset('packages/img/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'برنامج تجريبي',
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            PrimaryColorOverride(
              color: kShrineBrown900,
              //  child: TextFormField(
              //   decoration: new InputDecoration(labelText: 'اسم المستخدم'),
              //   validator: (value)=>value.isEmpty?'Email can\'t be empty' : null,
              //   onSaved: (value)=> _email = value,
              // ),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'اسم المستخدم',
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            PrimaryColorOverride(
              color: kShrineBrown900,
              // child: TextFormField(
              //   decoration: new InputDecoration(labelText: 'كلمة السر'),
              //   validator: (value)=>value.isEmpty?'Email can\'t be empty' : null,
              //   onSaved: (value)=> _pass = value,
              // ),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'كلمة السر',
                ),
              ),
            ),
            Wrap(
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    // FlatButton(
                    //   child: const Text('الغاء'),
                    //   shape: const BeveledRectangleBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    //   ),
                    //   onPressed: () {
                    //    // Navigator.of(context, rootNavigator: true).pop();
                    //   },
                    // ),
                    RaisedButton(
                      child: const Text('موافق'),
                      elevation: 8.0,
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      onPressed: () {
                        // if(_usernameController.text != "" && _passwordController.text != ""){
                        // sendData();
                        getHttp();
                      //   if( i > 1 )
                      // if(data[1]['status'] > 1)
                      //  {
                      //   Navigator.of(context).pushReplacementNamed('/MenuPage');
                      //   }else{
                      //      _showDialog();
                      //    }
                        // }else{
                        //   _showDialog();
                        // }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("خطأ",style : TextStyle(color: Colors.white)),
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0) ,
          content: new Text("كلمة السر او اسم المستخدم فارغة",style : TextStyle(color: Colors.white)),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("موافق",style : TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride({Key key, this.color, this.child}) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}
