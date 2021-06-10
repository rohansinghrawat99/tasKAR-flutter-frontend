import 'package:flutter/material.dart';
import 'package:tasker/models/screen_arguments.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';
import 'package:tasker/screens/tasks.screen.dart';

class MyGroupTasks extends StatefulWidget {
  @override
  _MyGroupTasksState createState() => _MyGroupTasksState();
}

class _MyGroupTasksState extends State<MyGroupTasks> {
  int tabNumber = 1;
  int? groupId;

  @override
  Widget build(BuildContext context) {
    if (groupId == null) {
      ScreenArguments arguments = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
      groupId = arguments.groupId;
    }
    return CustomScaffold(
      selected: 2,
      onTapFAB: () {
        Navigator.pushNamed(context, "/my-task/create", arguments: ScreenArguments(groupId: groupId));
      },
      children: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 1 ? 4 : 0,
                    color: Colors.white10,
                    onPressed: () {
                      setState(() {
                        tabNumber = 1;
                      });
                    },
                    child: Text("To-Do", style: TextStyle(fontSize: 11.0))),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 2 ? 4 : 0,
                    color: Colors.white10,
                    onPressed: () {
                      setState(() {
                        tabNumber = 2;
                      });
                    },
                    child: Text("UnderReview", style: TextStyle(fontSize: 11.0))),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 3 ? 4 : 0,
                    color: Colors.white10,
                    onPressed: () {
                      setState(() {
                        tabNumber = 3;
                      });
                    },
                    child: Text("Completed", style: TextStyle(fontSize: 11.0))),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    elevation: tabNumber == 4 ? 4 : 0,
                    color: Colors.white10,
                    onPressed: () {
                      setState(() {
                        tabNumber = 4;
                      });
                    },
                    child: Text("Overdue", style: TextStyle(fontSize: 11.0))),
              ),
            ],
          ),
          Expanded(child: TaskListDisplay())
        ],
      ),
    );
  }
}
