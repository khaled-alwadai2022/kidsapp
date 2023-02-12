import 'package:final_project/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDataInfo extends StatefulWidget {
  UserDataInfo({super.key, required this.name, required this.phone});

  String name;
  String phone;

  @override
  State<UserDataInfo> createState() => _UserDataInfoState();
}

class _UserDataInfoState extends State<UserDataInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () async {
              await FirebaseAuth.instance.signOut();

              // Get.offAll(() => LoginPage());
              box.remove('First_Name');
              box.remove('email');
              print("done");
            },
            child: Icon(Icons.logout)),
        Spacer(
          flex: 1,
        ),
        _buildNamePhoneUser(widget.name, widget.phone),
        _buildImageUser(),
      ],
    );
  }

  Widget _buildImageUser({String? image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundImage: AssetImage("images/user-4.png"),
        // backgroundColor: Colors.grey.shade400,
        radius: 30,
      ),
    );
  }

  Widget _buildNamePhoneUser(String name, String phone) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Text(phone,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black87,
            ))
      ],
    );
  }
}
