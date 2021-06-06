class Mail {
  final String title;
  final String content;
  final MailFrom from;
  final String toName;
  final String date;

  Mail({
    required this.title,
    required this.content,
    required this.from,
    required this.toName,
    required this.date
  });
}

class MailFrom {
  final String avatarURL;
  final String name;

  MailFrom({
    required this.avatarURL,
    required this.name,
  });
}