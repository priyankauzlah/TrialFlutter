import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var -> im var -> muttable
  // _ = private (underscore doang)
  bool passwordVisibility = true; //jangan lupa titik koma
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4.0,
        leading: Padding(
          padding: EdgeInsets.all(12),
          child: Image.network(
              "https://d17ivq9b7rppb3.cloudfront.net/original/commons/new-ui-logo.png"),
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              MenuTile(title: 'Event'),
              MenuTile(title: 'Courses'),
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challenge')
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/img/dicoding_icon.png',
              width: 200,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Masuk',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)

                ///Theme.of(context).textTheme.headline4.copyWith(
                ///         color: Colors.black, fontWeight: FontWeight.bold)
                ),
            Center(child: Image.asset('assets/img/illustration.png')),
            SizedBox(
              height: 16,
            ),
            Text(
              'Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Alamat Email',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  isDense: true),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: passwordVisibility,
              decoration: InputDecoration(
                  hintText: 'Masukkan password',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                  ),
                  isDense: true),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Lupa Password",
              style:
                  TextStyle(fontSize: 16, decoration: TextDecoration.underline),
            ),
            //dari siniii------------
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.pink),
                onPressed: () {
                  //jika dilempar ke halaman lain
                },
                child: Text(
                  'Masuk',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            Text(
              'Atau masuk dengan',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Image.network(
                        'https://pngimg.com/uploads/google/google_PNG19644.png',
                        width: 55)),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Image.network(
                        'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19749.png',
                        width: 55))
              ],
            ),
            SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                text: 'Belum punya akun ? Ayo ',
                style: TextStyle(color: Colors.black54, fontSize: 16),
                children: [
                  TextSpan(
                      text: 'daftar',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;

  const MenuTile({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontWeight: FontWeight.bold)),
      trailing: Icon(Icons.navigate_next, color: Colors.black),
    );
  }
}
