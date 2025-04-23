import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/features/chat/controllers/chat_controller.dart';
import 'package:gymgenius_v1/features/chat/screens/widgets/chat_bubble.dart';
import 'package:gymgenius_v1/features/chat/screens/widgets/chat_input_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('GymGenius AI'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: controller.messages.length,
                  itemBuilder: (context, index) {
                    final message = controller.messages[index];
                    return ChatBubble(
                      text: message.text,
                      isUser: message.isUser,
                    );
                  },
                )),
          ),
          ChatInputBar(onSend: controller.sendMessage),
        ],
      ),
    );
  }
}
