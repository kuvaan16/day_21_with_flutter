import 'package:day_21_with_flutter/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/chats_model.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getUserChat.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChatScreen(
                  userChat: getUserChat[index],
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(
                            getUserChat[index].img,
                          ),
                        ),
                        getUserChat[index].online
                            ? Positioned(
                                right: 0,
                                top: 7,
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                ))
                            : Positioned(child: Container()),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getUserChat[index].name,
                          style: TextStyle(),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        getUserChat[index].messageIsVoice
                            ? Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[200]),
                                    child: Icon(
                                      Icons.mic_sharp,
                                      size: 16,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Send voice message",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            : getUserChat[index].riactioned
                                ? Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey[200]),
                                        child: Icon(
                                          Icons.thumb_up_alt_rounded,
                                          size: 14,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Liked your message",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  )
                                : Text(
                                    getUserChat[index].lastMessage,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(getUserChat[index].messageTimePassed),
                    getUserChat[index].isTyping
                        ? Icon(
                            FontAwesomeIcons.ellipsis,
                            color: Colors.amber[800],
                          )
                        : getUserChat[index].sendNewMessage
                            ? Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber[800]),
                                child: Text(
                                  getUserChat[index].howManeNewMessages,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Container(),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
