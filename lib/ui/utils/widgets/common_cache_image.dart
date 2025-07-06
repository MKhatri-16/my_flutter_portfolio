import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/ui/utils/theme/app_colors.dart';
import 'package:my_flutter_portfolio/ui/utils/theme/text_style.dart';


class CacheImage extends StatelessWidget {
  final String imageURL;
  final String? nameAsIcon;
  final double height;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;
  final double width;
  final bool? setPlaceHolder;
  final String? placeholderImage;
  final BoxFit? contentMode;
  final bool isBPlaceHolder;

  const CacheImage({
    super.key,
    required this.imageURL,
    required this.height,
    required this.width,
    this.setPlaceHolder = true,
    this.nameAsIcon,
    this.placeholderImage,
    this.contentMode,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.topLeftRadius,
    this.topRightRadius,
    this.isBPlaceHolder = false,
  });

  @override
  Widget build(BuildContext context) {
    return (imageURL == '')
        ? placeHolderWidget(nameAsIcon??"")
        : CachedNetworkImage(
      imageUrl: imageURL,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(topLeftRadius ?? 0.0), topRight: Radius.circular(topRightRadius ?? 0.0), bottomRight: Radius.circular(bottomRightRadius ?? 0.0), bottomLeft: Radius.circular(bottomLeftRadius ?? 0.0)),
          image: DecorationImage(
            image: imageProvider,
            fit: contentMode ?? BoxFit.fill,
          ),
        ),
      ),
      placeholder: (context, url) {
        return placeHolderWidget(nameAsIcon??"");
      },
      errorWidget: (context, url, error) => placeHolderWidget(nameAsIcon??""),
    );
  }

  Widget placeHolderWidget(String nameAsIcon) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.clrE5E5E5,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(topLeftRadius ?? 0.0), topRight: Radius.circular(topRightRadius ?? 0.0), bottomRight: Radius.circular(bottomRightRadius ?? 0.0), bottomLeft: Radius.circular(bottomLeftRadius ?? 0.0)),
        ),
        child: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: Text(
              nameAsIcon.isEmpty ? 'P' : nameAsIcon[0],
              style: TextStyles.semiBold.copyWith(fontSize: 16),
            ),
          ),
        )
    );
  }
}
