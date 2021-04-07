import 'package:flutter/material.dart';
import 'package:my_app/models/Profile.dart';

class ProfileDetail extends StatelessWidget {
  final Profile profile;

  const ProfileDetail({Key key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(profile.firstName + " "),
            Text(profile.lastName),
            Text(profile.college),
          ],
        ),
      ),
    );
  }
}