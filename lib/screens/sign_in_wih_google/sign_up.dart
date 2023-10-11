import 'package:google_sign_in/google_sign_in.dart';
import 'package:nike_ecommerce/screens/sign_in_wih_google/google_sigin_api.dart';

Future<void> signIn() async {
  try {
    // Call the asynchronous function with await
    GoogleSignInAccount? googleUser = await GoogleSigninApi.login();

    // Handle the result here
    if (googleUser != null) {
      // User signed in successfully
      print('User signed in: ${googleUser.displayName}');
    } else {
      // User canceled the sign-in process
      print('User canceled sign-in');
    }
  } catch (e) {
    // Handle errors here
    print('Error during sign in: $e');
  }
}
