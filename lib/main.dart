import 'package:flutter/material.dart';
import 'package:jeffhigham_com/config/palette.dart';
import 'package:jeffhigham_com/widgets/import.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeff Higham',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header(),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: Palette.topGradient,
              ),
              child: _ContactAvatar(),
            ),
          ],
        )
      ],
    );
  }
}

class _ContactAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 40,
          ),
          child: ProfileAvatar(
            imageName: 'profile.jpeg',
            radius: 100.0,
            backgroundColor: Theme.of(context).accentColor,
            borderColor: Colors.deepPurpleAccent,
            hasBorder: true,
            isActive: false,
          ),
        ),
        Text(
          'Jeff Higham',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
