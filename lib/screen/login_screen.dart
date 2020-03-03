import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loyaltotest/helpers/fonts.dart';
import 'package:loyaltotest/helpers/screen_utils.dart';
import 'package:loyaltotest/screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight(context),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('assets/images/login.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      color: Colors.black12.withOpacity(0.3),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Spacer(),
                          Flexible(
                              child: SvgPicture.asset(
                            'assets/images/pin.svg',
                            color: Colors.white,
                          )),
                          Text(
                            'YuK meeting',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: notoSansKrFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Spacer(),
                        ],
                      )),
                    )),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth(context, divideBy: 20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: TextField(
                            decoration:
                                InputDecoration.collapsed(hintText: 'Username'),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          child: TextField(
                            decoration:
                            InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              suffixIcon: IconButton(icon: Icon(Icons.visibility), onPressed: (){})
                            ),
                          ),
                        ),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        padding: EdgeInsets.symmetric(horizontal: screenWidth(context, divideBy: 7), vertical: 12),
                        child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 16),),
                        color: Theme.of(context).primaryColor,
                        onPressed: () => Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen()
                        )),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                        onPressed: (){},
                        child: Text('Forgot Password', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline,),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have account?"),
                        InkWell(
                            onTap: (){},
                            child: Text(' Sign Up', style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w600),))
                      ],
                    ),
                    Text('Yuk Meeting @ 2018', style: TextStyle(color: Colors.black.withOpacity(0.3)),),
                    Container(
                      height: 5,
                      width: screenWidth(context, divideBy: 3),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
