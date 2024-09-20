import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

class LanguageDropdown extends StatefulWidget {
  @override
  _LanguageDropdownState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  String? _selectedLanguage = 'Bahasa Jawa';
  final List<String> _languages = [
    'Bahasa Jawa',
    'Bahasa Indonesia',
    'English'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.03,
        vertical: 0,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.black, width: .3),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedLanguage,
          dropdownColor: whiteColor,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          onChanged: (String? newValue) {
            setState(() {
              _selectedLanguage = newValue;
            });
          },
          items: _languages.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: <Widget>[
                  Container(
                    width: deviceWidth * 0.065,
                    height: deviceHeight * 0.03,
                    margin: EdgeInsets.only(right: deviceWidth * 0.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    value,
                    style: blackTextStyle.copyWith(
                      fontSize: deviceWidth * 0.04,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
