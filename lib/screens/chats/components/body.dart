import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import '../../../models/chat_message.dart';
import '../../../sizeconfig.dart';
import 'chat_input_field.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
              itemCount: demoChatMessage.length,
              itemBuilder: (context, index) => Messages(
                    message: demoChatMessage[index],
                  )),
        )),
        const Spacer(),
        const ChatInputField(),
      ],
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message.isSender) ...[
          const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/chatbot.png"))
        ],
        const SizedBox(width: 5),
        Padding(
          padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenWidth(10)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: message.isSender
                    ? primaryColor
                    : primaryColor.withOpacity(0.1)),
            child: Text(
              message.text,
              style: TextStyle(
                color: message.isSender ? textColor2 : textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
