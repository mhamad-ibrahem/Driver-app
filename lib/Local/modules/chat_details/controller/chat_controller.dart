import 'dart:developer';

import 'package:driver_app/Global/Core/Class/HiveKeys.dart';
import 'package:driver_app/Local/modules/chat_details/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../../Global/Core/Class/HiveBox.dart';

class ChatDetailsController extends GetxController {
  late Socket socket;
  bool isConnected = false;
  bool isLoadingMessages = false;
  bool isErrorMessages = false;
  int messagesCount = 0;
  Box authBox = Hive.box(HiveBox.authBox);
  TextEditingController message = TextEditingController();
  ScrollController scrollController = ScrollController();
  List<MessageModel> messages = [];

  addMessage(MessageModel messageModel) {
    messages.add(messageModel);
    update();
  }

  connection() {
    //Emit with acknowledgement
    socket.onConnect((_) {
      print('connect');
      socket.emitWithAck('msg', 'init', ack: (data) {
        print('ack $data');
        if (data != null) {
          print('from server $data');
        } else {
          print("Null");
        }
      });
    });
  }

  initailSocket() {
    socket = io(
        'https://f79c-5-155-219-86.eu.ngrok.io',
        // <String, dynamic>{
        //   'forceNew': true,
        //   'username': 'mhamad',
        //   'transports': ['websocket'],
        //   'autoConnect': false,
        //   'auth': {'token': 'App.token'},
        //   'charset': 'utf-8',
        // },
        OptionBuilder().setTransports(["websocket"]).setQuery(
            {'username': authBox.get(HiveKeys.nameKeY)}).build());
    socket.on('message', (data) => addMessage(MessageModel.fromJson(data)));
    socket.connect();
    socket.onConnect((_) {
      isConnected = true;
      update();
      emitMessagesCount();
      log("_____ socket.auth${socket.auth}");
      log("__SOCKET ID is ${socket.id}");
      log("__SOCKET ACTIVE is ${socket.active}");
    });
    socket.onDisconnect((_) {
      isConnected = false;
      update();
      log('__Disconnect From Socket');
    });
    socket.onConnectError((data) {
      log("Error Connecting - > $data");
    });

    socket.onConnectTimeout((data) => log('__Time Out'));
    socket.onReconnect((data) {
      log("SOCKET ID on reconnect is ${socket.id}");
    });
  }

  void sendMessage() {
    socket.emit('message', {
      'message': message.text.trim(),
      'sender': authBox.get(HiveKeys.nameKeY),
    });
    message.clear();
  }

  void emitConnectError() {
    log("___EMIT ConnectError");
    socket.on(
        "connect_error",
        (err) => {
              log('__SOCKET Connect_Error $err'),
            });
  }

  void emitError() {
    log("___EMIT Error");
    socket.on(
        "error",
        (err) => {
              log('__SOCKET Error $err'),
            });
  }

  void emitMessageArrived() {
    log("___EMIT MessageArrived");
    socket.on(
      'sent',
      (data) {
        log("Message Arrived $data");
      },
    );
  }

  void emitMessagesCount() {
    log("___EMIT message count");
    socket.on(
      'message-count',
      (data) {
        log("message-count $data");
        messagesCount = data["messageCount"];
      },
    );
  }

  void emitGetChat() {
    log("___EMIT get-chat");
    socket.emit(
      'get-chat',
      {
        // 'chat_id': chatId,
        // 'userNumber': userNumber,
      },
    );
  }

  void emitChatEvents() {
    log("___EMIT chat-id-get-chat");
    socket.on(
      'chat-id-get-chat',
      (data) {
        log("___ChatIdGetChat $data");
      },
    );
    socket.on(
      'chat-id-message',
      (data) {
        log("___chat-id-message $data");
        // sendSuccess(true);
      },
    );
    socket.on(
      'disconnect-session',
      (data) {
        log("___disconnect-session $data");
      },
    );
    socket.on(
      'not-authorized',
      (data) {
        log("___not-authorized $data");
      },
    );
    socket.on(
      'offline',
      (data) {
        log("___offline $data");
      },
    );
  }

  void emitSeenChat() {
    log("___EMIT seen");
    socket.emit(
      'seen',
    );
  }

  void emitSendMessage() async {
    if (message.text.trim().isNotEmpty) {
      emitGetChat();
      emitChatEvents();
      String dateTime = DateTime.now().toUtc().toString();
      log(message.text.trim());
      // sendSuccess(false);
      socket.emit(
        'message',
        {
          // 'message': utf8.encode(message.text.trim()),
          'date': dateTime,
          'to': {
            // "username": receiverName,
            // "userId": receiverId,
          }, // reciver
          "replyTo": '',
        },
      );
      // messagesList.add(MessageModel(
      // chatId: chatId,
      // date: DateTime.now(),
      // message: " $userNumber${message.text.trim()} ",
      // reply: '',
      // user2: 0,
      // user1: 0,
      // ));
      await Future.delayed(const Duration(milliseconds: 10));
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.linearToEaseOut);
      message.clear();
    }
  }

  void emitReplyToMessage() async {
    if (message.text.trim().isNotEmpty) {
      String dateTime = DateTime.now().toUtc().toString();
      log(message.text);
      // sendSuccess(false);
      String replyTo = '';
      // if (replyToName.value == profileController.profileInfoModal.userName) {
      // replyTo = "0$replyToMessage";
    } else {
      // replyTo = "1$replyToMessage";
    }
    socket.emit(
      'message',
      {
        'message': message.text.trim(),
        // 'date': dateTime,
        'to': {
          // "username": receiverName,
          // "userId": receiverId,
        }, // reciver
        // "replyTo": replyTo,
      },
    );
    // messagesList.add(MessageModel(
    // chatId: chatId,
    // date: DateTime.now(),
    // message: " $userNumber${message.text.trim()} ",
    // reply: replyTo.substring(1),
    // user2: 0,
    // user1: 0,
    // ));
    await Future.delayed(const Duration(milliseconds: 10));
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.linearToEaseOut);
    message.clear();
    // }
  }

  @override
  void onInit() {
    print(authBox.get(HiveKeys.nameKeY));
    initailSocket();
    super.onInit();
  }
}
