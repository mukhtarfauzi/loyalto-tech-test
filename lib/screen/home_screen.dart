import 'package:flutter/material.dart';
import 'package:loyaltotest/helpers/colors.dart';
import 'package:loyaltotest/helpers/screen_utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenHeight(context), kToolbarHeight + 20),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: FlatButton(
              onPressed: () {},
              color: searchBarColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: searchTextColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Butuh jasa apa, Mukhtar Fauzi',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: searchTextColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Mau meeting dimana?'),

          ],
        ),
      ),
    );
  }
}
