import 'package:flutter/material.dart';

class UserChats {
  String name;
  String img;
  String lastMessage;
  String messageTimePassed;
  bool online;
  bool messageIsVoice;
  bool isTyping;
  bool sendNewMessage;
  bool riactioned;
  String howManeNewMessages;
  UserChats({
    required this.name,
    required this.img,
    required this.lastMessage,
    required this.messageTimePassed,
    required this.online,
    required this.messageIsVoice,
    required this.isTyping,
    required this.sendNewMessage,
    required this.riactioned,
    required this.howManeNewMessages,
  });
}

List<UserChats> getUserChat = [
  UserChats(
    img: "img/p0.jpg",
    name: "Shvan",
    lastMessage: "Chdkay hale ta??",
    messageTimePassed: "1m",
    online: true,
    messageIsVoice: false,
    isTyping: false,
    sendNewMessage: true,
    riactioned: false,
    howManeNewMessages: "1",
  ),
  UserChats(
    img: "img/p1.jpg",
    name: "Lole",
    lastMessage: "",
    messageTimePassed: "2m",
    online: true,
    messageIsVoice: true,
    isTyping: true,
    sendNewMessage: false,
    riactioned: false,
    howManeNewMessages: "3",
  ),
  UserChats(
    img: "img/p2.jpg",
    name: "Kamiran",
    lastMessage: "Bra pashi pichak zi wara",
    messageTimePassed: "16m",
    online: false,
    messageIsVoice: false,
    isTyping: false,
    sendNewMessage: true,
    riactioned: false,
    howManeNewMessages: "3",
  ),
  UserChats(
    img: "img/p3.jpg",
    name: "Shrvin",
    lastMessage: "Xerhatiiiii",
    messageTimePassed: "2d",
    online: true,
    messageIsVoice: false,
    isTyping: false,
    sendNewMessage: false,
    riactioned: false,
    howManeNewMessages: "3",
  ),
  UserChats(
    img: "img/p4.jpg",
    name: "Shrvin",
    lastMessage: "Hallaw",
    messageTimePassed: "1w",
    online: false,
    messageIsVoice: false,
    isTyping: false,
    sendNewMessage: false,
    riactioned: true,
    howManeNewMessages: "3",
  ),
  UserChats(
    img: "img/p5.jpg",
    name: "Shrvin",
    lastMessage: "Yes, sure",
    messageTimePassed: "3w",
    online: true,
    messageIsVoice: false,
    isTyping: false,
    sendNewMessage: false,
    riactioned: true,
    howManeNewMessages: "3",
  ),
];
