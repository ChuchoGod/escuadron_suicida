import 'package:escuadron_suicida/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagelist = [
    Message(text: "Hola Salazar", fromWho: FromWho.me),
    Message(
        text: "Por haberte ido te vas especial directo", fromWho: FromWho.hers)
  ];
}
