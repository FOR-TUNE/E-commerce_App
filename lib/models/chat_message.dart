import 'package:flutter/material.dart';

class ChatMessage {
  final String text;
  final bool isSender;

  ChatMessage(this.text, this.isSender);
}

List demoChatMessage = [
  ChatMessage("Hello, welcome to FortStor.\n What is your name?", false),
  ChatMessage("My name is Fortune", true),
  ChatMessage("Welcome. How can we help you.", false),
  ChatMessage("Alright, I have a question to ask.", true),
  ChatMessage("Kindly proceed with your question", false)
];
