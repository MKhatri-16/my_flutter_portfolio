/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LangGen {
  const $LangGen();

  /// File path: lang/en.json
  String get en => 'lang/en.json';

  /// List of all assets
  List<String> get values => [en];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  $AssetsFontsHelveticaNeueGen get helveticaNeue =>
      const $AssetsFontsHelveticaNeueGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/muskan-removebg-preview.png
  AssetGenImage get muskanRemovebgPreview =>
      const AssetGenImage('assets/images/muskan-removebg-preview.png');

  /// File path: assets/images/muskan.jpg
  AssetGenImage get muskan => const AssetGenImage('assets/images/muskan.jpg');

  /// File path: assets/images/muskan_nobg.png
  AssetGenImage get muskanNobg =>
      const AssetGenImage('assets/images/muskan_nobg.png');

  /// List of all assets
  List<AssetGenImage> get values => [muskanRemovebgPreview, muskan, muskanNobg];
}

class $AssetsFontsHelveticaNeueGen {
  const $AssetsFontsHelveticaNeueGen();

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueBlack.otf
  String get helveticaNeueBlack =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueBlack.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueBlackItalic.otf
  String get helveticaNeueBlackItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueBlackItalic.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueBold.otf
  String get helveticaNeueBold =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueBold.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueBoldItalic.otf
  String get helveticaNeueBoldItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueBoldItalic.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueHeavy.otf
  String get helveticaNeueHeavy =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueHeavy.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueHeavyItalic.otf
  String get helveticaNeueHeavyItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueHeavyItalic.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueItalic.ttf
  String get helveticaNeueItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueItalic.ttf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueLight.otf
  String get helveticaNeueLight =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueLight.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueLightItalic.otf
  String get helveticaNeueLightItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueLightItalic.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueMedium.otf
  String get helveticaNeueMedium =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueMedium.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueMediumItalic.otf
  String get helveticaNeueMediumItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueMediumItalic.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueRoman.otf
  String get helveticaNeueRoman =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueRoman.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueThin.otf
  String get helveticaNeueThin =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueThin.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueThinItalic.otf
  String get helveticaNeueThinItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueThinItalic.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueUltraLight.otf
  String get helveticaNeueUltraLight =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueUltraLight.otf';

  /// File path: assets/fonts/Helvetica_Neue/HelveticaNeueUltraLightItalic.otf
  String get helveticaNeueUltraLightItalic =>
      'assets/fonts/Helvetica_Neue/HelveticaNeueUltraLightItalic.otf';

  /// List of all assets
  List<String> get values => [
        helveticaNeueBlack,
        helveticaNeueBlackItalic,
        helveticaNeueBold,
        helveticaNeueBoldItalic,
        helveticaNeueHeavy,
        helveticaNeueHeavyItalic,
        helveticaNeueItalic,
        helveticaNeueLight,
        helveticaNeueLightItalic,
        helveticaNeueMedium,
        helveticaNeueMediumItalic,
        helveticaNeueRoman,
        helveticaNeueThin,
        helveticaNeueThinItalic,
        helveticaNeueUltraLight,
        helveticaNeueUltraLightItalic
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $LangGen lang = $LangGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
