import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import '../../../components/my_bottom_navbar.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    
      bottomNavigationBar: BottomNavBar(),
      drawer: Mydrawer(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Plant App"),
      elevation: 0,
    //   leading: IconButton(
    //     icon: SvgPicture.asset("assets/icons/menu.svg"),
    //    onPressed: (){
    //      //Mydrawer();
    //    }
    //  ),
    );
  }
}

class Mydrawer extends StatelessWidget {
  const Mydrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: const <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: UserAccountsDrawerHeader(
          
          margin: EdgeInsets.all(5.0),
          
          accountName: Text("Test@test.com"), accountEmail: Text("TestUsername"), currentAccountPicture: Icon(Icons.verified_user,size: 40,),
          
          )
       
      ),
      
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Profile'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ],
    ),
  );
  }
}


