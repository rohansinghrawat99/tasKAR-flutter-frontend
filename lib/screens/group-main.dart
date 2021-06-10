import 'package:flutter/material.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';
import 'package:tasker/screens/customs/store_observer.dart';
import 'package:tasker/screens/tasks.screen.dart';

class GroupMain extends StatefulWidget {
  @override
  _GroupMainState createState() => _GroupMainState();
}

class _GroupMainState extends State<GroupMain> {
  int tabNumber = 1;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
                    child: Text("To-Do")),
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
                    child: Text("Under Review")),
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
                    child: Text("Completed")),
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
                    child: Text("Overdue")),
              ),
            ],
          ),
          Expanded(child: StoreObserver())
        ],
      ),
    );
  }
}
