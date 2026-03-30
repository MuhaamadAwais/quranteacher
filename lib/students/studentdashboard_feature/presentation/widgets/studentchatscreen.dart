// screens/student_chat_screen.dart
import 'package:flutter/material.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/chatmessage.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class StudentChatScreen extends StatefulWidget {
  final String? teacherName;

  const StudentChatScreen({super.key, this.teacherName = 'Ahmed Ali'});

  @override
  State<StudentChatScreen> createState() => _StudentChatScreenState();
}

class _StudentChatScreenState extends State<StudentChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  late List<ChatMessage> messages;

  @override
  void initState() {
    super.initState();
    _initializeMessages();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  void _initializeMessages() {
    messages = [
      ChatMessage(
        text: "Assalam o Alaikum Ustad! Aaj ka homework complete ho gaya.",
        isMe: true,
        time: DateTime.now().subtract(Duration(minutes: 4)),
        type: MessageType.text,
      ),
      ChatMessage(
        text: "Wa Alaikum Assalam! Bohat acha kaam kiya beta.",
        isMe: false,
        time: DateTime.now().subtract(Duration(minutes: 2)),
        type: MessageType.text,
      ),
      ChatMessage(
        text: "JazakAllah! Kal Juz 2 practice kar lenge InshaAllah.",
        isMe: true,
        time: DateTime.now(),
        type: MessageType.text,
      ),
    ];
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    setState(() {
      messages.add(
        ChatMessage(
          text: text,
          isMe: true,
          time: DateTime.now(),
          type: MessageType.text,
        ),
      );
    });

    _messageController.clear();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          // App Bar Title (Student Side)
          TopcommonContainer(
            title: "Student Chat",
            subTitle: "Teacher: ${widget.teacherName} | subject: Tajweed ",
          ),

          // Messages List
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // Online Status (Ustad Online)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Muhammad Ali Online',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.green[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Messages
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      padding: EdgeInsets.only(bottom: 20),
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        return MessageBubble(message: message);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Input Box (Student → Teacher)
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black12,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type message to teacher...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    maxLines: null,
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                SizedBox(width: 12),

                GestureDetector(
                  onTap: _sendMessage,
                  child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue[600]!, Colors.blue[800]!],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
