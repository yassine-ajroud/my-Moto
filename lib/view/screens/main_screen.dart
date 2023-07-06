import 'package:flutter/material.dart';
import 'package:my_moto/controller/provider.dart';
import 'package:my_moto/view/widgets/custom_appbar.dart';
import 'package:my_moto/view/widgets/post.dart';
import 'package:provider/provider.dart';


class MainScreen extends StatefulWidget {
  final bool isIOS;
  const MainScreen({Key? key, required this.isIOS}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            child: CustomAppBar(isIOS: widget.isIOS),
            preferredSize: const Size.fromHeight(90),
          ),
          body: ListView.builder(
            physics: widget.isIOS
                ? const BouncingScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: PostWidget(isIOS: widget.isIOS),
            ),
          ),
          floatingActionButton: !widget.isIOS? FloatingActionButton(
            child:const Icon(Icons.add),
            onPressed: () {
              Provider.of<MyProvide>(context, listen: false).toggle();
            },
          ):null,
        ),
      ),
    );
  }
}
