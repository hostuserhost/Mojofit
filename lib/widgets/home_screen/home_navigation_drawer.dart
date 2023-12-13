import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

NavigationDrawer mainNavigationDrawer(BuildContext context) {
  return NavigationDrawer(backgroundColor: Color(0xFF282828), children: [
    ListTile(
      title: Text(
        'Главная',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    ListTile(
      title: Text(
        'Написать нам',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () async {
        await launchUrl(
            mode: LaunchMode.inAppBrowserView,
            Uri.parse('https://t.me/hostuserh'));
      },
    ),
    ListTile(
      title: Text(
        'Сайт',
        style: TextStyle(color: Colors.white),
      ),
      onTap: () async {
        await launchUrl(Uri.parse('https://project8256357.tilda.ws/'));
      },
    ),
  ]);
}
