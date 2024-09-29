import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/const.dart';
import '../../../shared/theme.dart';

// ignore: must_be_immutable
class FormDetailModal extends StatefulWidget {
  const FormDetailModal(
      {super.key,
      required this.controller,
      required this.dataType,
      required this.title});

  final TextEditingController controller;
  final String dataType;
  final String title;

  @override
  State<FormDetailModal> createState() => _FormDetailModalState();
}

class _FormDetailModalState extends State<FormDetailModal> {
  String? selectedValue;
  List<dynamic> itemList = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    String filePath;
    if (widget.dataType == 'gender') {
      filePath = 'assets/data/gender.json';
    } else if (widget.dataType == 'jenjangSekolah') {
      filePath = 'assets/data/jenjang_sekolah.json';
    } else if (widget.dataType == 'pekerjaan') {
      filePath = 'assets/data/pekerjaan.json';
    } else if (widget.dataType == 'frekeunsiBepergian') {
      filePath = 'assets/data/frekuensi_bepergian.json';
    } else if (widget.dataType == 'jenisBepergian') {
      filePath = 'assets/data/jenis_bepergian.json';
    } else if (widget.dataType == 'waktuBepergian') {
      filePath = 'assets/data/waktu_bepergian.json';
    } else if (widget.dataType == 'durasiBepergian') {
      filePath = 'assets/data/durasi_bepergian.json';
    } else {
      return;
    }

    try {
      String jsonString = await rootBundle.loadString(filePath);
      setState(() {
        itemList = json.decode(jsonString);
      });
    } catch (e) {
      print("Error loading JSON data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: deviceHeight * 0.01),
            width: deviceWidth * 0.1,
            height: deviceHeight * 0.01,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 209, 207, 207),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.05,
              vertical: deviceHeight * 0.02,
            ),
            child: Text(
              widget.title,
              style: greyFormTextStyle.copyWith(
                fontWeight: bold,
                fontSize: deviceWidth * 0.04,
              ),
            ),
          ),
          ...itemList.map((e) {
            return CustomInput(
              value: e['label'],
              isSelected: selectedValue == e['label'],
              action: () {
                setState(() {
                  widget.controller.text = e['label'];
                  selectedValue = e['label'];
                });
              },
            );
          }),
          Container(
            margin: EdgeInsets.only(bottom: deviceHeight * 0.02),
            width: deviceWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryColor,
              border: Border.all(
                width: 1,
                color: const Color.fromRGBO(222, 222, 222, 1),
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.05,
              vertical: deviceHeight * 0.01,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Center(
                  child: Text(
                "Selanjutnya",
                style: whiteTextStyle.copyWith(
                  fontSize: deviceWidth * 0.04,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.value,
    required this.action,
    required this.isSelected,
  });
  final String value;
  final VoidCallback action;
  final bool isSelected; // Boolean to check if this item is selected

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: EdgeInsets.only(bottom: deviceHeight * 0.02),
        width: deviceWidth,
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: isSelected
                ? primaryColor
                : const Color.fromRGBO(222, 222, 222, 1),
          ),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05, vertical: deviceHeight * 0.01),
        child: Center(
          child: Text(
            value,
            style: GoogleFonts.openSans().copyWith(
              fontSize: deviceWidth * 0.04,
              color: isSelected
                  ? whiteColor
                  : const Color.fromRGBO(109, 109, 109, 1),
            ),
          ),
        ),
      ),
    );
  }
}
