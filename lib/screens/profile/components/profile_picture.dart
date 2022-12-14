// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          fit: StackFit.expand,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile image.png"),
            ),
            Positioned(
                bottom: 0,
                right: -05,
                child: SizedBox(
                  height: 46,
                  width: 46,
                  child: FlatButton(
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(color: Colors.white)),
                      color: lightprimaryColor,
                      onPressed: () {},
                      child: SvgPicture.asset("assets/icons/camera_icon.svg")),
                ))
          ],
        ));
  }
}
