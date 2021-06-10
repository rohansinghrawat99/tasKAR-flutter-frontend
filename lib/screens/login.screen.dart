import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasker/screens/customs/store_observer.dart';
import 'package:tasker/store/user_store.dart';
import 'package:tasker/utils/global.dart';
import 'package:delayed_display/delayed_display.dart';

class Login extends StatefulWidget {
  static const String routeNamed = "Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoggedIn = false;
  String _clientId =
      "153431196807-ssr4q83t87doa2tt829niumujtjhq1l1.apps.googleusercontent.com";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "TasKAR",
                style: GoogleFonts.audiowide(fontSize: 40.0, color: Colors.white),
              ),
              SizedBox(height: 50),
              DelayedDisplay(delay: Duration(seconds: 1), child: _signInButton())
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget _signInButton() {
    return StoreObserver(builder: (UserStore userStore, BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40.0)),
        child: OutlineButton(
          splashColor: Colors.lightBlue,
          onPressed: () async {
            try {
              await userStore.login();
            } catch (e) {
              showErrorSnackBar(e, context);
            }
            if (userStore.isLoggedIn) {
              Navigator.pushReplacementNamed(context, "/my-task");
            }
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          highlightElevation: 0,
          borderSide: BorderSide(color: Colors.grey),
          child: userStore.isLoading
              ? CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                          image:
                              AssetImage("assets/flat-color-icons_google.png"),
                          height: 30.0),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Sign in with Google',
                          style: GoogleFonts.secularOne(
                              fontSize: 10, color: Colors.black45),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      );
    });
  }

  Widget note() {
    return Container(
        padding: EdgeInsets.only(left: 20.0),
        child: Center(
          child: Text(
            "You have to do what you got to do!\n"
            "JUST DO IT",
            style: GoogleFonts.teko(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
        height: 175.0,
        width: 175.0,
        margin: EdgeInsets.symmetric(horizontal: 13.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.zero,
              topRight: Radius.zero,
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          color: Colors.yellow[500].withOpacity(0.6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                10.0, // Move to right 10  horizontally
                10.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ));
  }
}
