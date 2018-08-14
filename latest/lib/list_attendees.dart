// import 'dart:async';
// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ListAttendees extends StatefulWidget{
//   List<dynamic> items;
//   ListAttendees(this.items){

//   }
//   @override
//   ListAttendeesState createState() {
//     // TODO: implement createState
//     return new ListAttendeesState(this.items);
//   }

// }


// class ListAttendeesState extends State<ListAttendees>{
class ListAttendees extends StatelessWidget{
  List<dynamic> items;
  // ListAttendeesState(this.items){
  ListAttendees(this.items){
    print("this.items");
    print(this.items);
  }
  //why dont we initialize in here?

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,idx){

        return new Container(
          padding:EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(items[idx]["name"], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0)),
              new Wrap(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.all(5.0),
                    child: new Chip(
                    
                      label: new Text(items[idx]["username"]),
                    ),

                  ),
                  new Container(
                    margin: EdgeInsets.all(5.0),
                    child: new Chip(
                    
                      label: new Text(items[idx]["email"]),
                    ),

                  ),
                  new Container(
                    margin: EdgeInsets.all(5.0),
                    child: new Chip(
                    
                      label: new Text(items[idx]["website"]),
                    ),

                  ),

                ],
              )
            ],
          )
        );
      },
    );
  }

}