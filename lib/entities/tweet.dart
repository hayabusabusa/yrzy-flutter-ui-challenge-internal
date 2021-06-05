class Tweet {
  final TweetAccount account;
  final String content;
  final String time;

  int replyNumber;
  int retweetNumber;
  int favoriteNumber;

  Tweet({
    required this.account,
    required this.content,
    required this.time,
    required this.replyNumber,
    required this.retweetNumber,
    required this.favoriteNumber,
  });
}

class TweetAccount {
  final String id;
  final String name;
  final String avatarURL;

  TweetAccount({
    required this.id,
    required this.name,
    required this.avatarURL,
  });
}