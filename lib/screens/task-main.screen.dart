import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasker/models/task.dart';
import 'package:tasker/models/user.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';
import 'package:tasker/store/user_store.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class TaskMain extends StatelessWidget {
  final Task task;
  TaskMain({this.task});

  @override
  Widget build(BuildContext context) {
    UserModal loggedInUser = Provider.of<UserStore>(context).loggedInUser;
    return CustomScaffold(
      children: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  task.title,
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w600, fontSize: 30.0, letterSpacing: 2.0, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  task.description,
                  style: GoogleFonts.roboto(letterSpacing: 2.0, color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("-${task.assignedTo == null ? loggedInUser.name : task.assignedTo.name}",
                        style: GoogleFonts.secularOne(color: Colors.white),
                      ),
                      SizedBox(width: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Due at:    ", style: GoogleFonts.secularOne(color: Colors.white)),
                          Text(DateFormat("dd-MM-yyyy  HH:mm").format(DateTime.parse(task.dueTime)), style: TextStyle(color: Colors.white),)
                        ],
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
