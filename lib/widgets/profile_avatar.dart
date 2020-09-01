import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jeffhigham_com/config/palette.dart';
import 'package:animate_do/animate_do.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;
  final double radius; // 20.0
  final Color backgroundColor; // Colors.grey[200]
  final Color borderColor; // Colors.white
  final String initials;

  const ProfileAvatar({
    Key key,
    @required this.imageUrl,
    @required this.radius,
    @required this.backgroundColor,
    @required this.borderColor,
    this.initials = "",
    this.isActive = false,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: borderColor,
          child: imageUrl != null
              ? CircleAvatar(
                  radius: hasBorder ? radius - 3 : radius,
                  backgroundColor: backgroundColor,
                  backgroundImage: CachedNetworkImageProvider(imageUrl),
                )
              : Text(
                  this.initials,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: radius * .75,
                  ),
                ),
        ),
        isActive
            ? Positioned(
                bottom: radius / 12,
                right: radius / 12,
                child: Pulse(
                  duration: Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () => {print('"Online" clicked!')},
                    child: Container(
                      height: radius / 2,
                      width: radius / 2,
                      decoration: BoxDecoration(
                        color: Palette.online,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: hasBorder ? 2.0 : 0.0,
                          color: borderColor,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
