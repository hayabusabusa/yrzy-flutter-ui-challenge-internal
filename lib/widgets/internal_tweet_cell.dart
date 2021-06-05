import 'package:flutter/material.dart';

class InternalTweetCell extends StatelessWidget {
  final String accountName;
  final String accountID;
  final String accountAvatarURL;
  final String tweetTime;
  final String content;
  final int replyNumber;
  final int retweetNumber;
  final int favoriteNumber;
  final void Function() onTapReply;
  final void Function() onTapRetweet;
  final void Function() onTapFavorite;

  InternalTweetCell({ 
    Key? key,
    required this.accountName,
    required this.accountID,
    required this.accountAvatarURL,
    required this.tweetTime,
    required this.content,
    required this.replyNumber,
    required this.retweetNumber,
    required this.favoriteNumber,
    required this.onTapReply,
    required this.onTapRetweet,
    required this.onTapFavorite,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOTE: Avatar
          CircleAvatar(
            backgroundImage: NetworkImage(accountAvatarURL),
          ),
          const SizedBox(width: 12),
          // NOTE: Right contents column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // NOTE: Titles
                Row(
                  children: [
                    Text(
                      accountName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 4,),
                    Text(
                      accountID,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 4,),
                    Text(
                      tweetTime,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                // NOTE: Content text
                Text(content,),
                // NOTE: Buttons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: onTapReply, 
                      icon: Icon(Icons.messenger_outline_rounded), 
                      label: Text('$replyNumber'),
                    ),
                    TextButton.icon(
                      onPressed: onTapRetweet, 
                      icon: Icon(Icons.refresh_rounded), 
                      label: Text('$retweetNumber'),
                    ),
                    TextButton.icon(
                      onPressed: onTapFavorite, 
                      icon: Icon(Icons.favorite_border_rounded), 
                      label: Text('$favoriteNumber'),
                    ),
                    TextButton.icon(
                      onPressed: () {}, 
                      icon: Icon(Icons.share_outlined), 
                      label: Text(''),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}