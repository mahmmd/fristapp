import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:phpsqlflutter/colors.dart';
import 'package:http/http.dart' as http;
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
class LinePage extends StatefulWidget {
  @override
  LinePageState createState() {
    return new LinePageState();
  }
}

String url = "http://mahmmd.info/CodeIgniter/Api/news";
 List<dynamic> data=[];
  



class LinePageState extends State<LinePage>
  with SingleTickerProviderStateMixin {
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
    List<TimelineModel> items = [
      TimelineModel(Placeholder(),
          position: TimelineItemPosition.random,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(Placeholder(),
          position: TimelineItemPosition.random,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
    ];
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
      body: Timeline.builder(
        position: TimelinePosition.Right,
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data == null ? 0 :data.length,
        itemBuilder:(BuildContext context, int index) {
        return new TimelineModel(
          Card(
            margin: EdgeInsets.symmetric(vertical: 16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(data[index]['img']),
                const SizedBox(
                  height: 8.0,
                ),
                Text(data[index]['dec_news']),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  data[index]['name'],
                 
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          ),
          icon: new Icon(Icons.star)

        );
        }
    ),);
  }
  
  // final bodyaa =Container(
  //  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
  //   final doodle = doodles[i];
  //   final textTheme = Theme.of(context).textTheme;
  //   return TimelineModel(
  //       Card(
  //         margin: EdgeInsets.symmetric(vertical: 16.0),
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  //         clipBehavior: Clip.antiAlias,
  //         child: Padding(
  //           padding: const EdgeInsets.all(16.0),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: <Widget>[
  //               Image.network(doodle.doodle),
  //               const SizedBox(
  //                 height: 8.0,
  //               ),
  //               Text(doodle.time, style: textTheme.caption),
  //               const SizedBox(
  //                 height: 8.0,
  //               ),
  //               Text(
  //                 doodle.name,
  //                 style: textTheme.title,
  //                 textAlign: TextAlign.center,
  //               ),
  //               const SizedBox(
  //                 height: 8.0,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       position:
  //           i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
  //       isFirst: i == 0,
  //       isLast: i == doodles.length,
  //       iconBackground: doodle.iconBackground,
  //       icon: doodle.icon);
  // }
  // );

  }