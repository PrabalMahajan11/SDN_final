import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register_app/values/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        actions: [IconButton(onPressed: signOut, icon: Icon(Icons.logout), color: Colors.red,)]
        ),
      body: Center(
        child: Text("LOGGED IN AS: " + user.providerData[0].email!, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );
  }
}