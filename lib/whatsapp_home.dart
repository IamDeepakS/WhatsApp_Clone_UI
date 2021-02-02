import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/components/bottom_navigation.dart';
import 'package:whatsapp_clone_ui/components/chat_screen_ui.dart';
import 'package:whatsapp_clone_ui/components/story_screen_ui.dart';
import 'package:whatsapp_clone_ui/constants.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("WhatsApp UI"),
        backgroundColor: mainColor,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            StoryScreenUI(),
            ChatScreenUI(),
          ],
        ),
      ),
      floatingActionButton: BottomNavigation(tabController: _tabController),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
