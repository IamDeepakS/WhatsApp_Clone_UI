import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/model/chatModel.dart';

class StoryScreenUI extends StatelessWidget {
  const StoryScreenUI({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF3B9889),
                      child: Icon(Icons.add, color: Colors.white, size: 25),
                      radius: 26,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Add Status",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: List.generate(
                  dummyData.length,
                  (i) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          dummyData[i].seen
                              ? CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    dummyData[i].avatarUrl,
                                  ),
                                  radius: 26,
                                )
                              : CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.green,
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundImage: NetworkImage(
                                      dummyData[i].avatarUrl,
                                    ),
                                  ),
                                ),
                          SizedBox(height: 5),
                          Text(
                            dummyData[i].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
