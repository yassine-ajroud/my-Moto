import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_moto/controller/provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  bool isIOS;
  ProfileScreen({Key? key, required this.isIOS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isIOS) {
      return SafeArea(
        child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.indigo,
                middle: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Expanded(
                  child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            child: Container()),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
            actions: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Provider.of<MyProvide>(context, listen: false).toggle();
                },
              )
            ],
          ),
        ),
      );
    }
  }
}
