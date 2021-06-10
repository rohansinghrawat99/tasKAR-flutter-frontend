import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasker/services/preference_service.dart';
import 'package:tasker/screens/login.screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasker/store/user_store.dart';

class SplashScreen extends StatefulWidget {
  static const String routeNamed = 'SplashPage';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      checkUser();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  
  checkUser() async {
    String? token = await PreferenceService.getInstance().getAuthToken();
    if (token == null) {
      Navigator.pushReplacementNamed(context, Login.routeNamed);
    }
    else {
      await Provider.of<UserStore>(context).fetchUserDetails();
      Navigator.pushReplacementNamed(context, "/my-task");
    }
  }
}
