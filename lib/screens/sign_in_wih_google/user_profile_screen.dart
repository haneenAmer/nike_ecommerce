import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nike_ecommerce/screens/sign_in_wih_google/sign_up.dart';

class UserInformationProfile extends StatelessWidget {
  final GoogleSignInAccount googleUser;

  const UserInformationProfile({super.key, required this.googleUser});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () {
              signUp(context);
            },
            child: const Text('Logged out'))
      ]),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Profile',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 32,
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(googleUser.photoUrl!),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Name:${googleUser.displayName!}',
            style: const TextStyle(
              color: Colors.amber,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Email:${googleUser.email}',
            style: const TextStyle(
              color: Colors.amber,
            ),
          ),
        ]),
      ),
    ));
  }
}
