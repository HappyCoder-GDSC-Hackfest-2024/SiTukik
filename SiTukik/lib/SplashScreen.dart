import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/authentication/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  int splashtime = 3;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          //pushReplacement = replacing the route so that
          //splash screen won't show on back button press
          //navigation to Home page.
          builder: (context) {
        return LoginPage();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children: <Widget>[
                  Container(
                    // margin: EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                        height: 81,
                        width: 167,
                        child: Image.asset("images/situkik.png")),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    //margin top 30
                    child: Text(
                      "SiTukik",
                      style: GoogleFonts.mySoul(
                        fontSize: 48,
                        color: Color.fromARGB(255, 0, 169, 225),
                      ),
                    ),
                  ),
                ])));
  }
}
