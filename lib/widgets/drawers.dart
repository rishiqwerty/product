import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final imageurl="https://pbs.twimg.com/profile_images/1395023322589515776/qKJemZ4b_400x400.png";
    return Drawer(
      child: Container(
        color: Colors.amberAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.amber),
                accountName: Text('Rishav SHarma',style: TextStyle(color: Colors.black),),
                accountEmail: Text('freakygadgets@gmail.com',style: TextStyle(color: Colors.black),),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageurl),)
                //Image.network(imageurl),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.black,),
              title: Text('Home', textScaleFactor: 1.2,),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.black,),
              title: Text('Profile', textScaleFactor: 1.2,),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.black,),
              title: Text('Contact Us', textScaleFactor: 1.2,),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.question_circle,color: Colors.black,),
              title: Text('About', textScaleFactor: 1.2,),

            ),
          ],
        ),
      ),
    );
  }
  
}