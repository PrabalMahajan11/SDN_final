import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';


class GoogleAuthService{
  GoogleSignInAccount? gUser;

  Future <dynamic> signInWithGoogle() async{
    final gAuth = await gUser!.authentication;

    final cred = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    await gUsersOut();

    return FirebaseAuth.instance.signInWithCredential(cred);
  }

  Future <dynamic> setGUser() async{
    gUser = await GoogleSignIn().signIn();
  }

  Future <dynamic> gUsersOut() async{
    gUser = await GoogleSignIn().signOut();
  }
}