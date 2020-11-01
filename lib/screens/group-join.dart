import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';

class GroupJoin extends StatefulWidget {
  @override
  _GroupJoinState createState() => _GroupJoinState();
}

class _GroupJoinState extends State<GroupJoin> {
  final myController = TextEditingController();

  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      children: Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Enter the Join #Code",
                  style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.w500, fontSize: 20.0)),
              SizedBox(height: 30.0),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the code"),
              ),
              RaisedButton(
                color: Colors.black54,
                  onPressed: () {
                    print(myController.text);
                  },
                  child: Text("JOIN", style: GoogleFonts.secularOne(color: Colors.white)))
            ],
          )),
    );
  }
}
