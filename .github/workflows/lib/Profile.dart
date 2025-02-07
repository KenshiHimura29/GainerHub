import 'package:flutter/material.dart';
import 'package:flutterviz/Editprofile.dart';
import 'package:flutterviz/Favorite.dart';
import 'package:flutterviz/Payment.dart';
import 'package:flutterviz/Promotion.dart';
import 'package:flutterviz/Splash.dart';
import 'package:flutterviz/TellFriends.dart';
import 'package:flutterviz/Setting.dart';
import 'package:flutterviz/Notification.dart';
import 'package:flutterviz/Membership.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff212435),
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigasi ke halaman sebelumnya
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Color(0xff212435),
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/Bodybuilder.jpeg", fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff000000),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            "Fashion Model",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffc2c2c2), height: 16),
              ListTile(
                leading: Icon(Icons.favorite_border, color: Color(0xff3a57e8)),
                title: Text("Favorites"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
                },
              ),
              ListTile(
                leading: Icon(Icons.credit_card, color: Color(0xff3a57e8)),
                title: Text("Payment"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person, color: Color(0xff3a57e8)),
                title: Text("Tell Your Friends"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TellYourFriendsPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_money, color: Color(0xff3a57e8)),
                title: Text("Promotions"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PromotionsPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Color(0xff3a57e8)),
                title: Text("Settings"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications, color: Color(0xff3a57e8)),
                title: Text("Notifications"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.card_membership, color: Color(0xff3a57e8)),
                title: Text("Membership"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MembershipPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Color(0xffe81d20)),
                title: Text("Logout"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Splash()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
