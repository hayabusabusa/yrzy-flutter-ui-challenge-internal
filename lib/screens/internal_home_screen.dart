import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/screens.dart';

class InternalHomeScreen extends StatelessWidget {
  final screens = _ScreenType.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('画面一覧'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: screens.length,
        itemBuilder: (_, index) => _Item(type: screens[index]),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final _ScreenType type;

  _Item({
    Key? key,
    required this.type,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(type.title),
      subtitle: Text(type.description),
      trailing: Icon(Icons.chevron_right_rounded),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => type.screen)
        );
      },
    );
  }
}

enum _ScreenType {
  Login,
  ColorPick,
  Messages,
  Tweets,
}

extension _ScreenTypeExtension on _ScreenType {
  String get title {
    switch (this) {
      case _ScreenType.Login:
        return 'ログイン';
      case _ScreenType.ColorPick:
        return '色選択';
      case _ScreenType.Messages:
        return 'メッセージ一覧';
      case _ScreenType.Tweets:
        return 'ツイート一覧';
    }
  }

  String get description {
    switch (this) {
      case _ScreenType.Login:
        return 'よくあるログイン画面のレイアウト\nColumnなど基本的なWidgetの使い方について';
      case _ScreenType.ColorPick:
        return '好きな色を選択する画面のレイアウト\n動的なWidgetの生成とStatefulWidgetについて';
      case _ScreenType.Messages:
        return 'LINEのメッセージ一覧画面っぽいレイアウト\nListViewを使った同じ要素をリスト形式で繰り返すようなUIについて';
      case _ScreenType.Tweets:
        return 'Twitterのツイート一覧画面っぽいレイアウト\nListViewで少し複雑なUIを作る';
    }
  }

  Widget get screen {
    switch (this) {
      case _ScreenType.Login:
        return InternalLoginScreen();
      case _ScreenType.ColorPick:
        return InternalColorPickScreen();
      case _ScreenType.Messages:
        return InternalMessagesScreen();
      case _ScreenType.Tweets:
        return SizedBox();
    }
  }
}