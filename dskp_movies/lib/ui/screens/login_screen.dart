import 'package:dskp_movies/core/constants/colors.dart';
import 'package:dskp_movies/core/constants/styles.dart';
import 'package:dskp_movies/ui/custom_widgets/custom_text_field.dart';
import 'package:dskp_movies/ui/custom_widgets/movies_icon_widget.dart';
import 'package:dskp_movies/ui/screens/movies_list_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('@Login Screen');
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ///
              /// Movies icon
              ///
              SizedBox(height: 100),
              Center(child: MoviesIconWidget()),

              SizedBox(height: 10),

              ///
              /// Text
              ///
              Center(
                child: Text(
                  'DS4KP Movies Ap',
                  style: boldWhiteTextStyle,
                ),
              ),

              SizedBox(height: 80),

              ///
              /// Email field
              ///
              CustomTextField('Email'),

              SizedBox(height: 25),

              ///
              /// password field
              ///
              CustomTextField('Password'),

              SizedBox(height: 30),

              /// login button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: yelloColor,
                    padding: EdgeInsets.symmetric(vertical: 15)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MoviesListScreen()));
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
