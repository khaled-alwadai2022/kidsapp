import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  SettingsMenu(
      {Key? key,
      required this.icon,
      required this.title,
      required this.function})
      : super(key: key);
  String icon;
  String title;
  Function? function;

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              widget.function!();
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  widget.icon,
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Divider(
            color: Colors.black54,
            indent: 8,
            endIndent: 24,
          ),
        ],
      ),
    );
  }
}
