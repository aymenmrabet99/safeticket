import 'dart:io'; // Corrected import
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Corrected import

extension ImageTypeExtension on String {
  ImageType get imageType {
    // Corrected method name to follow Dart naming conventions
    if (startsWith('http') || startsWith('https')) {
      // Removed unnecessary 'this'
      return ImageType.network;
    } else if (endsWith('.svg')) {
      // Removed unnecessary 'this'
      return ImageType.svg;
    } else if (startsWith('file://')) {
      // Removed unnecessary 'this'
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    // Marked as const
    super.key, // Using super parameter
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap, // Corrected from onlap to onTap
    this.radius,
    this.margin,
    this.border,
    this.placeholder =
        'assets/images/image_not_found.png', // Corrected from placeHolder to placeholder
  });

  final String? imagePath;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit; // Corrected from Boxfit to BoxFit
  final String placeholder;
  final Alignment? alignment;
  final VoidCallback? onTap; // Corrected from onlap to onTap
  final EdgeInsetsGeometry? margin;
  final BorderRadius? radius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: _buildWidget())
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(onTap: onTap, child: _buildCircleImage()),
    );
  }

  /// Build the image with border radius
  Widget _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  /// Build the image with border and border radius style
  Widget _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(border: border, borderRadius: radius),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        // Corrected from imagePath1 to imagePath
        case ImageType.svg:
          return SizedBox(
            // Replaced Container with SizedBox
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!, // Corrected from imagePath1 to imagePath
              height: height,
              width: width,
              fit: fit ?? BoxFit.contain,
              colorFilter:
                  color != null
                      ? ColorFilter.mode(
                        color ?? Colors.transparent,
                        BlendMode.srcIn,
                      )
                      : null,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!), // Corrected from imagePath1 to imagePath
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
        case ImageType.network:
          return CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: imagePath!, // Corrected from imagePath1 to imagePath
            color: color,
            placeholder:
                (context, url) => SizedBox(
                  // Replaced Container with SizedBox
                  height: 30,
                  width: 30,
                  child: LinearProgressIndicator(
                    color: Colors.grey.shade200,
                    backgroundColor: Colors.grey.shade100,
                  ),
                ),
            errorWidget:
                (context, url, error) => Image.asset(
                  placeholder,
                  height: height,
                  width: width,
                  fit: fit ?? BoxFit.cover, // Corrected from Boxfit to BoxFit
                ),
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!, // Corrected from imagePath1 to imagePath
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover, // Corrected from Boxfit to BoxFit
            color: color,
          );
      }
    }
    return SizedBox(); // Return an empty SizedBox if imagePath is null
  }
}
