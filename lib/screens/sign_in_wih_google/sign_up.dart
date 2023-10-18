import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nike_ecommerce/screens/home_screen.dart';
import 'package:nike_ecommerce/screens/sign_in_wih_google/google_sigin_api.dart';
import 'package:nike_ecommerce/screens/sign_in_wih_google/user_profile_screen.dart';

Future<GoogleSignInAccount?> signUp(BuildContext context) async {
  try {
    // Call the asynchronous function with await
    GoogleSignInAccount? googleUser = await GoogleSigninApi.login();

    if (googleUser == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Sign in failed')));
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => UserInformationProfile(googleUser: googleUser),
      ));
    }

    // Handle the result here
    if (googleUser != null) {
      // User signed in successfully
      print('User signed in: ${googleUser.displayName}');
    } else {
      // User canceled the sign-in process
      print('User canceled sign-in');
    }
    return googleUser;
  } catch (e) {
    // Handle errors here
    print('Error during sign in: $e');
  }
}
