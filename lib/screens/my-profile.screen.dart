import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tasker/models/user.dart';
import 'package:tasker/screens/customs/scaffold.custom.dart';
import 'package:tasker/services/preference_service.dart';
import 'package:tasker/store/user_store.dart';

class MyProfile extends StatelessWidget {
  UserModal? loggedInUser;
  @override
  Widget build(BuildContext context) {
    if (loggedInUser == null) {
      loggedInUser = Provider.of<UserStore>(context).loggedInUser;
    }
    return CustomScaffold(
      selected: 3,
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
              Container(
                padding: EdgeInsets.all(10.0),
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(loggedInUser!.profilePictureUrl ?? "https://www.xovi.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Text("Name: ",
                      style: GoogleFonts.lobster(
                          fontSize: 25.0, fontWeight: FontWeight.w800)),
                  SizedBox(width: 10.0),
                  Text(loggedInUser!.name!,
                      style: GoogleFonts.secularOne(
                          fontSize: 25.0, fontWeight: FontWeight.w300))
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Email: ",
                      style: GoogleFonts.lobster(
                          fontSize: 25.0, fontWeight: FontWeight.w800)),
                  SizedBox(width: 10.0),
                  Text(loggedInUser!.email!,
                      style: GoogleFonts.secularOne(
                          fontSize: 20.0, fontWeight: FontWeight.w300))
                ],
              )
            ],
          )),
    );
  }

  getLoggedInUser() async{
    UserModal? loggedInUser = await PreferenceService.getInstance().getAuthUser();
    return loggedInUser;
  }
}
