import 'package:flutter/material.dart';

import '../../../shared/const.dart';
import '../../../shared/theme.dart';

class QuestionBoxWidget extends StatefulWidget {
  const QuestionBoxWidget(
      {super.key,
      required this.value,
      required this.answerOptions,
      required this.index});

  final String value;
  final List<dynamic> answerOptions;
  final String index;
  @override
  State<QuestionBoxWidget> createState() => _QuestionBoxWidgetState();
}

class _QuestionBoxWidgetState extends State<QuestionBoxWidget> {
  String? selectedValue;

  void onValueChanged(String? newValue) {
    setState(() {
      selectedValue = newValue;
    });
  }

  @override
  void initState() {
    if (widget.answerOptions.isNotEmpty) {
      // selectedValue = widget.answerOptions[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
      margin: EdgeInsets.only(bottom: deviceHeight * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${widget.index}. ${widget.value}",
            style: greyIsiDataTextStyle.copyWith(
              fontSize: deviceWidth * 0.037,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.04),
            width: deviceWidth,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(109, 109, 109, .3),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: widget.answerOptions.isNotEmpty
                ? DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: selectedValue,
                      dropdownColor: whiteColor,
                      hint: Text(
                        'Pilih Jawaban',
                        style: greyIsiDataTextStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines:
                            1, // Ensure long text is truncated with ellipsis
                      ),
                      items: widget.answerOptions.map<DropdownMenuItem<String>>(
                        (dynamic value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              overflow: TextOverflow
                                  .clip, // Ensures long text is truncated with ellipsis

                              style: greyIsiDataTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  )
                : const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          )
        ],
      ),
    );
  }
}
