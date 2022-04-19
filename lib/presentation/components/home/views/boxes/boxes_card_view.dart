import 'dart:math';

import 'package:archive_skeleton/presentation/extensions/thin_colors.dart';
import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;
import 'package:ionicons/ionicons.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BoxesCardView extends StatefulWidget {
  const BoxesCardView({Key? key}) : super(key: key);

  @override
  State<BoxesCardView> createState() => _BoxesCardViewState();
}

class _BoxesCardViewState extends State<BoxesCardView>
    with ThinDimensions, ThinColors {
  late final FlyoutController flyoutController;

  @override
  void initState() {
    super.initState();
    flyoutController = FlyoutController();
  }

  @override
  void dispose() {
    flyoutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flyout(
      controller: flyoutController,
      content: (ctx) {
        return const FlyoutContent(
          constraints: BoxConstraints(maxWidth: 100),
          child: Text(
              'The Flyout for Button 3 has LightDismissOverlayMode enabled'),
        );
      },
      child: GestureDetector(
        child: SizedBox.expand(
          child: mat.Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(pagePadding),
              child: mat.Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Ionicons.star_outline),
                        Icon(Ionicons.ellipsis_vertical),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _fileIcon,
                        spacePage,
                        Text(_randomName),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AspectRatio(
                      aspectRatio: 4,
                      child: Column(
                        children: [
                          const mat.Divider(),
                          Row(
                            children: [
                              AutoSizeText.rich(
                                TextSpan(
                                  text: "Filesize:",
                                  style: FluentTheme.of(context)
                                      .typography
                                      .bodyStrong,
                                  children: [
                                    TextSpan(
                                      text: "\n$_generateRandomInt MB",
                                      style: FluentTheme.of(context)
                                          .typography
                                          .caption,
                                    ),
                                  ],
                                ),
                                minFontSize: 5,
                                maxFontSize: 12,
                              ),
                            ],
                          ),
                          Row(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(borderRadius: regularBorderRadius),
            shadowColor: shadowColor,
            elevation: cardElevation,
          ),
        ),
        onTap: flyoutController.open,
      ),
    );
  }

  Widget get _fileIcon {
    if (_generateRandomInt % 2 == 0) {
      return const mat.Icon(Ionicons.document_outline, size: 36);
    }
    return const mat.Icon(Ionicons.file_tray_stacked_outline, size: 36);
  }

  String get _randomName {
    return _generateRandomString(_generateRandomInt);
  }

  String _generateRandomString(int length) {
    final _random = Random();
    const _availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length,
            (index) => _availableChars[_random.nextInt(_availableChars.length)])
        .join();
    return randomString;
  }

  int get _generateRandomInt {
    final _random = Random();
    return _random.nextInt(20) + 10;
  }
}
