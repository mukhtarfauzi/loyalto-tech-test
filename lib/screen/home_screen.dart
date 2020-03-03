import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loyaltotest/helpers/colors.dart';
import 'package:loyaltotest/helpers/fonts.dart';
import 'package:loyaltotest/helpers/screen_utils.dart';
import 'package:loyaltotest/screen/search_screen.dart';
import 'package:loyaltotest/widgets/promo.dart';
import 'package:loyaltotest/widgets/search_bar.dart';
import 'package:loyaltotest/widgets/top_review.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _navigationSelected = 0;

  bool _showSearch = false;

  void _navigateTo(int navIndex) {
    setState(() {
      _navigationSelected = navIndex;
    });
  }

  void _searchItem(String text){
    print('Search : $text');
    setState(() {
      if(text.length != 0){
        _showSearch = true;
      }else{
        _showSearch = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _showSearch?Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            color: primaryColor,
              child: Text('Filter By', style: TextStyle(color: Colors.white),),
              onPressed: (){})
          ,
          RaisedButton(
              color: primaryColor,
              child: Text('Map View', style: TextStyle(color: Colors.white)),
              onPressed: (){})
        ],
      ):null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Mau meeting dimana?',
                  style: TextStyle(
                      fontFamily: quicksandFont,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w900),
                ),
              ),
              StickyHeader(
                header: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.all(16),
                  child: SearchBar(
                    onChanged: _searchItem,
                  ),
                ),
                content: AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: _showSearch?SearchScreen():Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Promo(),
                      TopReview(),
                      SizedBox(
                        height: screenHeight(context, divideBy: 2),
                      )
                    ],
                  ),
                )
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: _showSearch?null:BottomNavigationBar(
          backgroundColor: navBarColor,
          currentIndex: _navigationSelected,
          onTap: (navIndex) => _navigateTo(navIndex),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          selectedIconTheme: IconThemeData(color: primaryColor),
          unselectedIconTheme: IconThemeData(color: Colors.black),
          showSelectedLabels: true,
          selectedLabelStyle: TextStyle(color: primaryColor),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Home',
              ),
              icon: Icon(FontAwesomeIcons.home),
            ),
            BottomNavigationBarItem(
              title: Text(
                'My Booking',
              ),
              icon: Icon(FontAwesomeIcons.clock),
            ),
            BottomNavigationBarItem(
              title: Text('Favorites'),
              icon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(
              title: Text('Chat'),
              icon: Icon(Icons.chat_bubble_outline),
            ),
            BottomNavigationBarItem(
              title: Text('Profile'),
              icon: Icon(FontAwesomeIcons.user),
            )
          ]),
    );
  }
}
