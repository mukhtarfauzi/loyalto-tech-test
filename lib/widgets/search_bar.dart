import 'package:flutter/material.dart';
import 'package:loyaltotest/helpers/fonts.dart';

class SearchBar extends StatelessWidget {
  final Function(String) onChanged;
  const SearchBar({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.white,
      child: TextField(
        decoration:
        InputDecoration(
            border: InputBorder.none,
            hintText: 'Ketik kota atau nama tempat',
            hintStyle: TextStyle(
              fontFamily: quicksandFont
            ),
            prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: (){})
        ),
        onChanged: onChanged,
      ),
    );
  }
}
