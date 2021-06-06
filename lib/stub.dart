import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/entities/entities.dart';

/// 画面表示用のデータをスタブとして返すクラス
class Stub {
  /// 色選択画面用の色一覧
  static List<Color> get colors => [
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.green.shade200,
    Colors.blue.shade200,
    Colors.indigo.shade200,
  ];

  /// メッセージ一覧画面用のユーザーデータ一覧
  static List<User> get users => [
    User(name: 'hayabusa', avatarURL: 'https://avatars.githubusercontent.com/u/31949692?s=64&v=4', message: 'サッカーやりたいね。たくあん刻みながら。', updatedDate: '5/6'),
    User(name: 'totty', avatarURL: 'https://avatars.githubusercontent.com/u/31689275?s=64&v=4', message: 'いただきます...っと', updatedDate: '5/4'),
    User(name: 'Kbayashi', avatarURL: 'https://avatars.githubusercontent.com/u/82300193?s=64&v=4', message: 'モンハンいつやる？？？？？？', updatedDate: '5/4'),
    User(name: 'dev-tky', avatarURL: 'https://avatars.githubusercontent.com/u/69100759?s=88&v=4', message: 'ご不便をおかけしております。お手数ですが一度パスワードにハイフンなどの記号が含まれていないかご確認いただけないでしょうか。', updatedDate: '5/2'),
    User(name: 'Kbayashi', avatarURL: 'https://avatars.githubusercontent.com/u/82300193?s=64&v=4', message: 'モンハンいつやる？？？？？', updatedDate: '5/3'),
    User(name: 'Kbayashi', avatarURL: 'https://avatars.githubusercontent.com/u/82300193?s=64&v=4', message: 'モンハンいつやる？？？？', updatedDate: '5/2'),
    User(name: 'Kbayashi', avatarURL: 'https://avatars.githubusercontent.com/u/82300193?s=64&v=4', message: 'モンハンいつやる？？？', updatedDate: '5/1'),
    User(name: 'Kbayashi', avatarURL: 'https://avatars.githubusercontent.com/u/82300193?s=64&v=4', message: 'モンハンいつやる？？', updatedDate: '4/30'),
    User(name: 'Kbayashi', avatarURL: 'https://avatars.githubusercontent.com/u/82300193?s=64&v=4', message: 'モンハンいつやる？', updatedDate: '4/29'),
  ];

  /// Twitter の画面用のツイートのデータ一覧
  static List<Tweet> get tweets => [
    Tweet(
      account: TweetAccount(id: '@dev_szkt', name: 'たくぽん@副業', avatarURL: 'https://pbs.twimg.com/profile_images/752910069444939776/z-cT4eHl_400x400.jpg'), 
      content: 'そんなわけで今日は師匠に報告も兼ねてご飯😋', 
      time: '10分', 
      replyNumber: 10, 
      retweetNumber: 2, 
      favoriteNumber: 1
    ),
    Tweet(
      account: TweetAccount(id: '@totty_9', name: 'とってぃ', avatarURL: 'https://pbs.twimg.com/profile_images/1257317383594631169/edA-c95F_400x400.jpg'), 
      content: '40分の格闘の末新聞売り込みに勝った！やったぜ！\n昨年の人なら買ってたかもしれないのに残念だったな、人は常に進化しているんだ。', 
      time: '14分', 
      replyNumber: 84, 
      retweetNumber: 206, 
      favoriteNumber: 128
    ),
    Tweet(
      account: TweetAccount(id: '@totty_9', name: 'とってぃ', avatarURL: 'https://pbs.twimg.com/profile_images/1257317383594631169/edA-c95F_400x400.jpg'), 
      content: 'なんか嫌な予感がする...', 
      time: '58分', 
      replyNumber: 1, 
      retweetNumber: 2, 
      favoriteNumber: 4
    ),
    Tweet(
      account: TweetAccount(id: '@shirokuma35', name: 'つけ麺沙悟浄', avatarURL: 'https://pbs.twimg.com/profile_images/1386696789407899649/--9endrD_400x400.jpg'), 
      content: '「フィロソフィー」というのは単に「愛知の学」という意味であり、それだけではまだ何を研究する学問であるかは示されていない。', 
      time: '1時間', 
      replyNumber: 1, 
      retweetNumber: 20, 
      favoriteNumber: 56
    ),
    Tweet(
      account: TweetAccount(id: '@dev_szkt', name: 'たくぽん@副業', avatarURL: 'https://pbs.twimg.com/profile_images/752910069444939776/z-cT4eHl_400x400.jpg'), 
      content: 'ありがたいことにまた新規のご依頼をいただきました！いつも皆さんが応援してくれているおかげです😭フォロワーさんに感謝🙏', 
      time: '3時間', 
      replyNumber: 40, 
      retweetNumber: 12, 
      favoriteNumber: 98
    ),
    Tweet(
      account: TweetAccount(id: '@hybs12', name: '滑空するマダイ', avatarURL: 'https://pbs.twimg.com/profile_images/1263671861000278016/wTKGQnbg_400x400.jpg'), 
      content: '会社に隕石が落ちる確率を計算していたら、限りなく0に近いことがわかった。', 
      time: '7時間', 
      replyNumber: 1, 
      retweetNumber: 2, 
      favoriteNumber: 1
    ),
    Tweet(
      account: TweetAccount(id: '@shirokuma35', name: 'つけ麺沙悟浄', avatarURL: 'https://pbs.twimg.com/profile_images/1386696789407899649/--9endrD_400x400.jpg'), 
      content: '形相は個物の形相であり、個物の形態である。形相として限定されない限り個物は存在しえない。この意味で個物は現実態であると言われる。それでは現実に形相をとる以前に個物はどのようなものであるのか。', 
      time: '12時間', 
      replyNumber: 40, 
      retweetNumber: 23, 
      favoriteNumber: 73
    ),
  ];

  /// メール詳細画面用のメールのデータを作成する.
  /// 
  /// `toName` に指定した文字列でメールの内容を作成してくれる.
  /// `isShort` が `true` の場合は短い文を作成してくれる.
  static Mail mail({String toName = '自分', bool isShort = true}) {
    final content = isShort 
      ? ''' 
$toName 様

この度は、弊社の採用選考をお受け頂き、まことにありがとうございました。先日の面接内容や応募書類を精査した結果、弊社では $toName 様が活躍できる場所をご用意することができないという結論に至りました。

せっかくご足労して頂いたのにも関わらず、申し訳ございません。まことに心苦しいのですが、なにとぞご了承いただけるようにお願い致します。

末筆ではありますが、$toName 様の、より一層のご活躍をお祈り申し上げます。
      ''' 
      : ''' 
$toName 様

こんにちは。
人事部の尽寺です。

先日は、最終面接にお越しいただきありがとうございました。

採用担当で選考を進めさせていただいた結果、今回は、採用を見送らせていただくことになりました。何卒ご了承いただけるようによろしくお願いします。


結果的にご縁はございませんでしたが、$toName 様の集中力とコミュニケーション能力の高さには目を見張るものがありました。$toName 様なら、その長所を生かせる場所を探すことが出来ると感じました。まだ就職活動は続くと思われますが、ぜひ頑張っていただきたいです。


また何かの形でご縁がありましたら、その際はよろしくお願い致します。今回は弊社の新卒採用を受けていただき、本当にありがとうございました。

なお、選考内容に関するお問い合わせは受け付けておりませんので、何卒ご了承いただけるようによろしくお願いします。

$toName 様のこれからの今後のご活躍を心よりお祈り申し上げます。
      ''';

    return Mail(
      title: '株式会社 カイシャ 採用担当 選考結果のご連絡', 
      content: content, 
      from: MailFrom(avatarURL: 'https://avatars.githubusercontent.com/u/31949692?s=64&v=4', name: '株式会社 カイシャ 採用担当'), 
      toName: toName,
      date: '6月7日',
    );
  }
}