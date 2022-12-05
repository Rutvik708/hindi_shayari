import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          height: 50,
            width: 50,
            child:Image.asset("image/login.png")
      ),
          ElevatedButton(onPressed: () {
            Future<UserCredential> signInWithGoogle() async {
              // Trigger the authentication flow
              final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

              // Obtain the auth details from the request
              final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

              // Create a new credential
              final credential = GoogleAuthProvider.credential(
                accessToken: googleAuth?.accessToken,
                idToken: googleAuth?.idToken,
              );

              // Once signed in, return the UserCredential
              return await FirebaseAuth.instance.signInWithCredential(credential);
            }
          }, child: Text("Google Sign In"))

        ],
      ),
    );
  }
}
