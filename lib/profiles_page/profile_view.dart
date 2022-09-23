import 'package:flutter/material.dart';
import 'package:nutrivisor/profiles_page/profile_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key, required this.profile}) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 28,
                backgroundColor: Color.fromRGBO(157, 169, 175, 1),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 24,
                    child: Center(
                      child: Text(profile.pic),
                    ),
                  ),
                )),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(profile.name),
                Text(profile.age, style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1)),),
                Text(profile.email, style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1)),),

              ],),
          ],
        ),
        ImageIcon(
          AssetImage('assets/icons/settings1.png'),
          size: 16,
        ),
      ],
    );
  }
}
