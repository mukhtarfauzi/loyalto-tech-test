import 'package:flutter/material.dart';
import 'package:loyaltotest/data/mockup_const.dart';
import 'package:loyaltotest/helpers/colors.dart';
import 'package:loyaltotest/helpers/screen_utils.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: dataMock.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            elevation: 1.5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: screenWidth(context, divideBy: 2),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)
                          ),
                          image: DecorationImage(
                              image:
                                  ExactAssetImage(dataMock[index]['imageUrl']),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                dataMock[index]['title'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 17),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.restaurant, color: primaryColor,),
                                  SizedBox(width: 8,),
                                  Icon(Icons.wifi, color: primaryColor,),
                                  SizedBox(width: 8,),
                                  Icon(Icons.print, color: primaryColor,),

                                ],
                              )
                            ],
                          ),
                          Text(dataMock[index]['address']),
                          SizedBox(height: 16,),
                          Text('Start from'),
                          Text(
                            dataMock[index]['price'],
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: primaryColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        ));
  }
}
