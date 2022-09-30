import 'package:flutter/material.dart';
import '../../components/custom_nav_bar.dart';
import '../../constants.dart';
import '../../enums.dart';
import '../../sizeconfig.dart';
import 'components/body.dart';

class MessageScreen extends StatelessWidget {
  static String routeName = '/chats';

  const MessageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/chatbot.png"),
          ),
          const SizedBox(width: 10),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "The Fortstor ChatBot",
              style: TextStyle(
                  color: textColor, fontSize: getProportionateScreenHeight(15)),
            ),
            Text(
              "Active Now",
              style: TextStyle(
                  color: textColor, fontSize: getProportionateScreenHeight(10)),
            )
          ]),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
