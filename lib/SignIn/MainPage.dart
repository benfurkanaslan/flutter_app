import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainPage extends StatefulWidget {
  num screenWidth;
  num screenHeight;
  String userName;
  String password;
  String birthDate;
  var color;

  MainPage({@required this.screenWidth, @required this.screenHeight, @required this.userName, @required this.password, @required this.color, @required this.birthDate});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: widget.color,
        title: Text(
          "Tap&Talk",
          style: TextStyle(
            color: Colors.black,
            letterSpacing: widget.screenWidth * 0.003,
            wordSpacing: widget.screenWidth * 0.01,
            fontSize: widget.screenWidth * 0.06,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Main Page"),
            widget.userName.isEmpty ? null : Text("User Name  : ${widget.userName}"),
            widget.password.isEmpty ? null : Text("Password : ${widget.password}"),
            widget.birthDate.isEmpty ? null : Text("Birth Day : ${widget.birthDate}"),
          ],
        ),
      ),
    );
  }
}