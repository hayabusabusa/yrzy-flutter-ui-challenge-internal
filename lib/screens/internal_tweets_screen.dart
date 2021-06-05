import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/stub.dart';
import 'package:ui_challenge_internal/widgets/widgets.dart';

class InternalTweetsScreen extends StatefulWidget {
  const InternalTweetsScreen({ Key? key }) : super(key: key);

  @override
  _InternalTweetsScreenState createState() => _InternalTweetsScreenState();
}

class _InternalTweetsScreenState extends State<InternalTweetsScreen> {
  var tweets = Stub.tweets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(),
      ),
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (_, index) {
          final tweet = tweets[index];
          return InternalTweetCell(
            accountName: tweet.account.name, 
            accountID: tweet.account.id, 
            accountAvatarURL: tweet.account.avatarURL,
            tweetTime: tweet.time, 
            content: tweet.content, 
            replyNumber: tweet.replyNumber, 
            retweetNumber: tweet.retweetNumber, 
            favoriteNumber: tweet.favoriteNumber, 
            onTapReply: () {
              setState(() {
                tweets[index].replyNumber += 1;
              });
            }, 
            onTapRetweet: () {
              setState(() {
                tweets[index].retweetNumber += 1;
              });
            }, 
            onTapFavorite: () {
              setState(() {
                tweets[index].favoriteNumber += 1;
              });
            },
          );
        },
      ),
    );
  }
}