import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasker/models/group.dart';
import 'package:tasker/models/screen_arguments.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';

class Groups extends StatelessWidget {
  final List<Group> groups;
  Groups({required this.groups});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      selected: 2,
      onTapFAB: () {
        showDialog(context: context, builder: (context) => groupDialog(context));
      },
      children: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                      ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TweenAnimationBuilder(
                      child: ListTile(
                        tileColor: Colors.grey,
                        title: Text("Group Name",
                            style: GoogleFonts.secularOne(fontWeight: FontWeight.w500, letterSpacing: 2.0)),
                        subtitle: Text("AR", style: GoogleFonts.secularOne(fontWeight: FontWeight.w300)),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("ADMIN: Rohan"),
                            SizedBox(width: 10.0),
                            CircleAvatar(
                              backgroundColor: Colors.black38,
                              radius: 15.0,
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/groups/my-tasks", arguments: ScreenArguments(groupId: 2));
                        },
                        onLongPress: () {
                          showDialog(context: context, child: groupOptionsDialog(context, "groups[index].name"));
                        },
                      ),
                      tween: Tween<double>(begin: 1, end: 0),
                      builder: (BuildContext context, double val, Widget child) {
                        return Opacity(
                          opacity: val == 1 ? 0 : 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: val * 60),
                            child: child,
                          ),
                        );
                      },
                      duration: Duration(milliseconds: 700),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget groupDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white60,
      title: Text("Create a group or Join one", style: GoogleFonts.secularOne(letterSpacing: 1.5)),
      actions: [
        RaisedButton(onPressed: () {
          Navigator.pushNamed(context, "/groups/create");
        }, child: Text("Create", style: GoogleFonts.lobster())),
        RaisedButton(onPressed: () {
          Navigator.pushNamed(context, "/groups/join");
        }, child: Text("Join", style: GoogleFonts.lobster()))
      ],
    );
  }

  Widget groupOptionsDialog(BuildContext context, groupName) {
    return AlertDialog(
      backgroundColor: Colors.white60,
      title: Text(groupName, style: GoogleFonts.secularOne(letterSpacing: 1.5)),
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: () {
              Navigator.pushNamed(context, "/groups/create");
            }, child: Text("Members", style: GoogleFonts.lobster())),
            SizedBox(width: 10.0),
            RaisedButton(onPressed: () {
              Navigator.pushNamed(context, "/groups/join");
            }, child: Text("Edit Group", style: GoogleFonts.lobster()))
          ],
        )
      ],
    );
  }
}
