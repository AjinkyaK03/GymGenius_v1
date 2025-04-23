import 'package:get/get.dart';
import '../models/chat_message_model.dart';

class ChatController extends GetxController {
  var messages = <ChatMessageModel>[].obs;

  void sendMessage(String text) {
    messages.add(ChatMessageModel(text: text, isUser: true));

    // Simulate AI Response
    Future.delayed(const Duration(milliseconds: 600), () {
      if (text.toLowerCase().contains('workout')) {
        messages.add(ChatMessageModel(
            text: 'Here’s a simple 5-day workout plan for you 💪:\n'
                '• Day 1: Chest + Triceps\n'
                '• Day 2: Back + Biceps\n'
                '• Day 3: Legs\n'
                '• Day 4: Shoulders\n'
                '• Day 5: Full Body HIIT',
            isUser: false));
      } else {
        messages.add(ChatMessageModel(
            text: 'Got it! Let’s keep pushing toward your goals! 🚀',
            isUser: false));
      }
    });
  }
}
