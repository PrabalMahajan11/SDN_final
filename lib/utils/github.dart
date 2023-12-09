import 'package:firebase_auth/firebase_auth.dart';
import 'package:github_signin_promax/github_signin_promax.dart';
import 'package:flutter/material.dart';


class GitHubAuthService{
  dynamic accessToken;
  String? email;  

  Future <dynamic> githubSignIn(BuildContext context) async{

    var params = GithubSignInParams(
      clientId: 'ac5575d1a578c829a761',
      clientSecret: '506af2da43cfc71005beebc33a804d1b3b8eb74f',
      redirectUrl: 'https://sdn-project-b76b3.firebaseapp.com/__/auth/handler',
      scopes: 'read:user,user:email',
    );

    await Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
      return GithubSigninScreen(
        params: params,
        headerColor: Colors.black,
        title: 'Login with github',
      );
    })).then((value) async {
      accessToken = value.accessToken;
      final AuthCredential credential = GithubAuthProvider.credential(accessToken.toString());
      await FirebaseAuth.instance.signInWithCredential(credential);
    });
  }
}