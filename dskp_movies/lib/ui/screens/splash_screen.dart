import 'package:dskp_movies/core/constants/colors.dart';
import 'package:dskp_movies/core/constants/styles.dart';
import 'package:dskp_movies/ui/custom_widgets/movies_icon_widget.dart';
import 'package:dskp_movies/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // print('@initState');
    _navigateToNextScreen();
    super.initState();
  }

  _navigateToNextScreen() async {
    /// Waiting for 2 secs
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('@Splash Screen');
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///
            /// Movies icon
            ///
            MoviesIconWidget(),

            SizedBox(height: 10),

            ///
            /// Text widget
            ///
            Text(
              'DS4KP Movies App',
              style: boldWhiteTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

// Upper Camel Case: AppName (classnames, Enums etc)
// Lower camel case: appName (variables and objects)
// Lower case with underscore: app_name (File names and folder names)
