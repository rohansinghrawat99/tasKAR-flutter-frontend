import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';

class TaskMain extends StatelessWidget {
  final Map task;

  TaskMain({this.task});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      children: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "TITLE",
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Text(
                    "1- Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds. \n" +
                        "2- Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d. \n" +
                        "3- Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs. \n" +
                        "4- Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad. \n" +
                        "5- Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds. \n" +
                        "6- Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf. \n" +
                        "7- Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd. \n" +
                        "8- Description that is too long in text format(Here Data is coming from API). \n" +
                        "9- Description that is too long in text format(Here Data is coming from API). \n" +
                        "10- Description that is too long in text format(Here Data is coming from API)",
                  style: GoogleFonts.secularOne(letterSpacing: 2.0),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "ASSIGNED TO",
                        style: GoogleFonts.secularOne(),
                      ),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        backgroundColor: Colors.black38,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
