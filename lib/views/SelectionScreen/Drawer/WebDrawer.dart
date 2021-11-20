import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class WebDrawer extends StatefulWidget {


  @override
  _WebDrawerState createState() => _WebDrawerState();
}

class _WebDrawerState extends State<WebDrawer> {
  _launchURLApp() async {
    const url = 'https://gistusa.org/aahaarkranti/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('AahaarKranti'),
          onTap: () {
            _launchURLApp();
            // _launchURLApp();

            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: const Text('AahaarKranti YouTube'),
          onTap: () async{

        const url = 'https://www.youtube.com/channel/UCvImGmSBnube751qwRhWk1A';
         if (await canLaunch(url)) {
          await launch(url, forceSafariVC: true, forceWebView: true);
         } else {
         throw 'Could not launch $url';
         }
          },
        ),
      ],
    );
  }
}
