import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone_ui/constants.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(containerRadius),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 18,
        color: mainColor,
        child: TabBar(
          tabs: [
            Tab(
              child: Icon(FontAwesomeIcons.solidCommentDots, size: 20),
            ),
            Tab(
              child: Icon(FontAwesomeIcons.userPlus, size: 20),
            ),
            Tab(
              child: Icon(FontAwesomeIcons.video, size: 20),
            ),
            Tab(
              child: Icon(FontAwesomeIcons.phoneAlt, size: 20),
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
