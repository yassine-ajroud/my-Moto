import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_moto/controller/provider.dart';
import 'package:my_moto/view/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget {
  final bool isIOS;
  const CustomAppBar({Key? key, required this.isIOS}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String _selected = 'A';
  @override
  Widget build(BuildContext context) {
    if (widget.isIOS) {
      return Column(
        children: [
          CupertinoNavigationBar(
            middle: const Text(
              "MY Moto",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.indigo,
            trailing: IconButton(
              icon: const Icon(
                CupertinoIcons.add,
                color: Colors.white,
              ),
              onPressed: () {
                Provider.of<MyProvide>(context, listen: false).toggle();
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CupertinoSegmentedControl(
                      groupValue: _selected,
                      pressedColor: Colors.indigo,
                      children: const {
                        "A": Expanded(
                          child: Text("race"),
                        ),
                        "B": Expanded(
                          child: Text("standard"),
                        ),
                        "C": Expanded(
                          child: Text("offroad"),
                        ),
                      },
                      onValueChanged: (value) {
                        setState(() {
                          _selected = value.toString();
                        });
                      }),
                ),
              ],
            ),
          )
        ],
      );
    } else {
      return AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ProfileScreen(isIOS: widget.isIOS)));
              },
              icon: const Icon(Icons.account_circle)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
        title: const Text("MY Moto"),
        backgroundColor: Colors.indigo,
        bottom: const TabBar(indicatorColor: Colors.white, tabs: <Widget>[
          Tab(
            text: 'race',
          ),
          Tab(
            text: 'standard',
          ),
          Tab(
            text: 'offroad',
          )
        ]),
      );
    }
  }
}
