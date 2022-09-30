import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../sizeconfig.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(color: lightprimaryColor, boxShadow: [
        BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 40,
            color: Colors.grey.withOpacity(0.03))
      ]),
      child: SafeArea(
          child: Row(
        children: [
          const Icon(
            Icons.mic,
            color: primaryColor,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(children: [
              Icon(
                Icons.emoji_emotions,
                color: textColor.withOpacity(0.4),
              ),
              const SizedBox(width: 10),
              const Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type Message",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none)))
            ]),
          ))
        ],
      )),
    );
  }
}
