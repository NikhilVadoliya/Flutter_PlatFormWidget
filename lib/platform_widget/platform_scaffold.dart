
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utility/platform_widget/platform_app_bar.dart';
import 'package:flutter_utility/platform_widget/platform_widget.dart';

class PlatformScaffold extends PlatformWidget<CupertinoPageScaffold, Scaffold> {
  PlatformScaffold({this.appBar, this.body});
  final PlatformAppBar appBar;
  final Widget body;

  @override
  CupertinoPageScaffold buildCupertinoWidget(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar.buildCupertinoWidget(context),
      child: body,
    );
  }

  @override
  Scaffold buildMaterialWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar.buildMaterialWidget(context),
      body: body,
    );
  }
}