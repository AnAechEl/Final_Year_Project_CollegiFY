import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: _signInWithGoogle,
          child: Text('Sign in with Google'),
        ),
      ),
    );
  }

  Future<User?> _signInWithGoogle() async {
    final GoogleSignInAccount? account = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? authentication =
        await account?.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: authentication?.idToken,
        accessToken: authentication?.accessToken);

    final User? user = (await _auth.signInWithCredential(credential)).user;
    print("signed in ${user?.displayName}");
    return user;
  }
}
