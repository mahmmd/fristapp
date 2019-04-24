import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:phpsqlflutter/colors.dart';
import 'package:http/http.dart' as http;
class LoginPage2 extends StatefulWidget {
  @override
  LoginPage2State createState() {
    return new LoginPage2State();
  }
}
String url = "http://mahmmd.info/CodeIgniter/Api/signup";
class LoginPage2State extends State<LoginPage2>
  with SingleTickerProviderStateMixin {
   TextEditingController _usernameController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();

    Future<String> postJsonData(String name,String pass) async{
      print(name +" " + pass);
        url = url + "/" + name + "/" + pass + "/ww" ;
        var respons = await http.get( 
          Uri.encodeFull(url)
        ,headers: {"Accept":"application/json"});
        print(respons.body);
    }
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(
          icon: const BackButtonIcon(),
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          }
        ),
      ),
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
                  'SHRINE',
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            PrimaryColorOverride(
              color: kShrineBrown900,
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            PrimaryColorOverride(
              color: kShrineBrown900,
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            Wrap(
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('CANCEL'),
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      onPressed: () {
                        // The login screen is immediately displayed on top of
                        // the Shrine home screen using onGenerateRoute and so
                        // rootNavigator must be set to true in order to get out
                        // of Shrine completely.
                       // Navigator.of(context, rootNavigator: true).pop();
                      },
                    ),
                    RaisedButton(
                      child: const Text('OK'),
                      elevation: 8.0,
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      onPressed: () {
                        postJsonData(_usernameController.text, _passwordController.text);
                        //Navigator.pop(context);
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
