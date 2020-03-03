import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:loyaltotest/data/mockup_const.dart';
import 'package:loyaltotest/helpers/colors.dart';
import 'package:loyaltotest/helpers/fonts.dart';
import 'package:loyaltotest/helpers/screen_utils.dart';

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Hot Deal Promo',
                style: TextStyle(
                    fontFamily: quicksandFont,
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                'See All',
                style: TextStyle(
                    fontFamily: quicksandFont,
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight(context, divideBy: 5),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: screenWidth(context),
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image:
                        ExactAssetImage(dataMock[index]['imageUrl']),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              dataMock[index]['discount'] ?? 'ad',
                              style: TextStyle(
                                  fontFamily: quicksandFont,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: discountColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(8))),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            dataMock[index]['title'],
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(dataMock[index]['address'],
                              style: TextStyle(color: Colors.white70)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: dataMock.length,
            viewportFraction: 0.7,
          ),
        ),
      ],
    );
  }
}
