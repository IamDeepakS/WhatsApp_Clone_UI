import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/components/conversation_screen_ui.dart';
import 'package:whatsapp_clone_ui/constants.dart';
import 'package:whatsapp_clone_ui/model/chatModel.dart';

class ChatScreenUI extends StatelessWidget {
  const ChatScreenUI({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: containerRadius),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 10),
          child: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConversationScreen(
                          profilePic: dummyData[i].avatarUrl,
                          username: dummyData[i].name,
                          online: dummyData[i].online,
                          time: dummyData[i].time,
                        ),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      dummyData[i].avatarUrl,
                    ),
                    radius: 26,
                    child: dummyData[i].online
                        ? Container(
                            margin: EdgeInsets.only(bottom: 40, right: 40),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          if (dummyData[i].seen)
                            Icon(
                              Icons.done_all,
                              size: 18,
                              color: Colors.blue[600],
                            ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              dummyData[i].message,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          if (!dummyData[i].seen)
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  indent: 70,
                  endIndent: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
