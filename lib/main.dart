import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:phpsqlflutter/home.dart';
import 'package:phpsqlflutter/login.dart';
import 'package:phpsqlflutter/line.dart';
import 'package:phpsqlflutter/menu.dart';
import 'package:phpsqlflutter/info.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// void main()=>runApp(new MaterialApp(

//   home: new HomePage(),
//   localizationsDelegates: [
//     GlobalMaterialLocalizations.delegate,
//     GlobalWidgetsLocalizations.delegate,
//   ],
//   supportedLocales: [
//     Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
//   ],
//   locale: Locale("ar", "AE") // OR Locale('ar', 'AE') OR Other RTL locales,
// ));
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<List> sendData(String user,String pass) async{
    String url = "http://mahmmd.info/CodeIgniter/Api/login/"+user+"/"+pass;
    http.Response response = await http.get(Uri.encodeFull(url),headers: {"Accept":"application/json"});
     return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Timeline Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
      routes: <String, WidgetBuilder> {
          '/Line': (BuildContext context) => new LinePage(),
          '/Home' : (BuildContext context) => new Home(),
          '/MenuPage' : (BuildContext context) => new MenuPage(),
          '/Info' : (BuildContext context) => new IPhoneWidget(),
          
      },
    );
  }
}
// class HomePage extends StatefulWidget{
//   @override
//   HomePageState createState()=> new HomePageState();
// }
// List<dynamic> data1=[];
// class HomePageState extends State<HomePage> {
// int _currentIndex = 0;
//  final List<Widget> _children = [LinePage(),Home(),LoginPage2()];

//    final topAppBar = AppBar(
//       elevation: 0.1,
//       backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//       title: Text("Json"),
      
//     );
//      void onTabTapped(int index) {
//       setState(() {
//       _currentIndex = index;
//       });
//       }
//     final makeBottom = Container(
//       height: 55.0,
//       child: BottomAppBar(
//         color: Color.fromRGBO(58, 66, 86, 1.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             IconButton(
//               icon: Icon(Icons.home, color: Colors.white),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.blur_on, color: Colors.white),
//               onPressed: () {LoginPage2();},
//             ),
//             IconButton(
//               icon: Icon(Icons.hotel, color: Colors.white),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.account_box, color: Colors.white),
//               onPressed: () {},
//             )
//           ],
//         ),
//       ),
//     );
    
   
//   @override
//   Widget build(BuildContext context){
//     return new Scaffold(
      
//       endDrawer: Icon(Icons.star),
//       backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//       appBar: topAppBar,
//       // bottomNavigationBar: makeBottom,
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         fixedColor: Color.fromRGBO(58, 66, 86, 1.0),
//        onTap: onTabTapped,
//        currentIndex: _currentIndex, 
//        items: [ 
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('الرئيسية'),
//           backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: Text('قائمة الاشخاص'),
//             backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: Text('Profile'),
//            backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//          )
//          ,
         
         
//        ],
//      ),
//    );
//       }
 
//   /*final cardBody = new ListView.builder(
//         itemCount: data == null ? 0 :data.length,
//         itemBuilder: (BuildContext context,int index){
//           return new Container(
//             child: new Center(
//               child: new Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   new Card(
//                     child: new Container(
//                       child: new Text(data[index]['title']+' => '+data[index]['content']),
//                       padding: const EdgeInsets.all(20.0),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       );*/
//       /* final makeBody = Container(
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         itemCount: data == null ? 0 :data.length,
//         itemBuilder: (BuildContext context, int index) {
//           return new Card(
//         elevation: 8.0,
//         margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//         child: Container(
//         decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
//         child: new ListTile(
//         contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//         leading: Container(
//           padding: EdgeInsets.only(right: 12.0),
//           decoration: new BoxDecoration(
//               border: new Border(
//                   right: new BorderSide(width: 1.0, color: Colors.white24))),
//           child: Icon(Icons.autorenew, color: Colors.white),
//         ),
//         title: Text(
//           data[index]['title'],
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//         subtitle: Row(
//           children: <Widget>[
//             Icon(Icons.linear_scale, color: Colors.yellowAccent),
//             Text(data[index]['content'], style: TextStyle(color: Colors.white))
//           ],
//         ),
//         trailing:
//             Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)),


//             ),
//           );
//         },
//       ),
//     );
   
//     */
// }