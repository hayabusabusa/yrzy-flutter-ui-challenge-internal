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
}