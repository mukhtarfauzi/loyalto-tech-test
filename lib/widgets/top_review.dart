import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:loyaltotest/data/mockup_const.dart';
import 'package:loyaltotest/helpers/colors.dart';
import 'package:loyaltotest/helpers/fonts.dart';
import 'package:loyaltotest/helpers/screen_utils.dart';

class TopReview extends StatelessWidget {
  const TopReview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Top Review',
            style: TextStyle(
                fontFamily: quicksandFont,
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: screenHeight(context, divideBy: 2),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: screenWidth(context, divideBy: 1.5),
                    height: screenWidth(context, divideBy: 2),
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image:
                                ExactAssetImage(dataMock[index]['imageUrl']),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          dataMock[index]['title'],
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(dataMock[index]['address']),
                        Text('Start from'),

                        Text(dataMock[index]['price'],
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: primaryColor),)
                      ],
                    ),
                  )
                ],
              );
            },
            itemCount: dataMock.length,
            viewportFraction: 0.5,
          ),
        ),
      ],
    );
  }
}
