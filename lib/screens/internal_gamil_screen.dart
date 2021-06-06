import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/stub.dart';

class InternalGMailScreen extends StatelessWidget {
  InternalGMailScreen({ Key? key }) : super(key: key);

  final mail =  Stub.mail(isShort: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.archive_outlined),
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.delete_outline),
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.mail_outline),
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // NOTE: Titles row
              Row(
                children: [
                  Expanded(
                    child: Text(
                      mail.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.star_border_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              // NOTE: User info row
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(mail.from.avatarURL),
                  ),
                  const SizedBox(width: 12,),
                  // NOTE: From and to column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // NOTE: From name
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                mail.from.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              mail.date,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'to ${mail.toName}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              // NOTE: Content
              Text(mail.content),
              const SizedBox(height: 12,),
              // NOTE: Footer buttons row
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlinedButton.icon(
                      onPressed: () {}, 
                      icon: Icon(Icons.subdirectory_arrow_left_rounded), 
                      label: Text('返信'),
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    flex: 1,
                    child: OutlinedButton.icon(
                      onPressed: () {}, 
                      icon: Icon(Icons.subdirectory_arrow_right_rounded), 
                      label: Text('転送'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}