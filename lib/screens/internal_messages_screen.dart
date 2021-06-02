import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/stub.dart';

class InternalMessagesScreen extends StatelessWidget {
  final users = Stub.users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('メッセージ'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (_, index) {
          final user = users[index];
          return InternalMessagesCell(name: user.name, avatarURL: user.avatarURL, message: user.message, updatedDate: user.updatedDate,);
        },
      ),
    );
  }
}

class InternalMessagesCell extends StatelessWidget {
  final String name;
  final String avatarURL;
  final String message;
  final String updatedDate;

  InternalMessagesCell({
    required this.name,
    required this.avatarURL,
    required this.message,
    required this.updatedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          // NOTE: Avatar
          SizedBox(
            width: 48,
            height: 48,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundImage: NetworkImage(
                avatarURL,
              ),
            ),
          ),
          const SizedBox(width: 16,),
          // NOTE: Texts column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  message,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8,),
          // NOTE: Updated date
          Text(
            updatedDate,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}