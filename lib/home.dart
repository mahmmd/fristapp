import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home>
  with SingleTickerProviderStateMixin {

final String url = "http://mahmmd.info/CodeIgniter/Api";
  //final String url = "https://swapi.co/api/planets/";
  List<dynamic> data=[];
  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var respons = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept":"application/json"}
      );
      print(respons.body);


      setState(() {
        var convertDataToJson = json.decode(respons.body);
        data = convertDataToJson['results'];
        
      });

      return "Success";
  }
   final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("Json"),
      
    );

    
   
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
           new Container(child: new DrawerHeader(child: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              
           )),color: Colors.tealAccent,),
            new Container (
              color: Color.fromRGBO(58, 66, 86, 1.0),
              child: new Column(
                children: new List.generate(4, (int index){
                  return new ListTile(
                    leading: new Icon(Icons.info),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data == null ? 0 :data.length,
        itemBuilder: (BuildContext context, int index) {
        return new Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: new ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        title:Row( children: <Widget>[
        Icon(Icons.account_circle, color: Colors.grey),
        Text(
          'اسم المستخدم : '+data[index]['username'],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
        ],
        ),
        onTap: () {
                    _showDialog(data[index]['username'].toString(),
                    data[index]['email'].toString(),
                    data[index]['password']);
                  },
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
              new Icon(Icons.email, color: Colors.blueGrey),
              new Text('الايميل : '+data[index]['email'], style: TextStyle(color: Colors.white))
              ],
              ),
              new Row(
              children: <Widget>[
              new Icon(Icons.pages, color: Colors.blueGrey),
              new Text('الاسم : '+data[index]['password'], style: TextStyle(color: Colors.white))
              ],
              ),
          ],
        ),
        
        trailing: 
           Icon(Icons.keyboard_arrow_left,
            color: Colors.white, 
            size: 30.0
            ),
             ),
            ),
          );
        },
      ),
    );
  }
 void _showDialog(String name,String email,String pass) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("About",style : TextStyle(color: Colors.white)),
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0) ,
          content: new Text("User : " +name + "\n" + "Email : "+email+"\n"+"Password : "+pass,style : TextStyle(color: Colors.white)),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close",style : TextStyle(color: Colors.white)),
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