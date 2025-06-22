import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leaderboard_ui/theme/app_theme.dart';

class ZigzagPodium extends StatelessWidget {
  final Color? background;
  final Color? circleColor;
  final Color? circlePositionColor;
  final String? circleText;
  final String? name;
  final String? userScore;
  final String? userName;
  final double? circleWidth;
  final double? circleHeight;
  final TextStyle? userPositionTextStyle;
  final TextStyle? userNameTextStyle;
  final TextStyle? userScoreTextStyle;
  final Widget? circleBackground;

  const ZigzagPodium({
    Key? key,
    this.background,
    this.circleText,
    this.name,
    this.userScore,
    this.userName,
    this.circleWidth,
    this.circleHeight,
    this.circleColor,
    this.circlePositionColor,
    this.userPositionTextStyle,
    this.userNameTextStyle,
    this.userScoreTextStyle,
    this.circleBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              ClipPath(
                clipper: BottomZigZagClipper(),
                child: Container(
                  width: 66,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: background ?? const Color(0xFFFF7A59),
                  child: Center(
                    child: Text(
                      userScore ?? '3087',
                      style: userScoreTextStyle ??
                          GoogleFonts.roboto(
                            textStyle:
                                AppTheme.light.textTheme.labelLarge?.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.08,
                child: Container(
                  width: circleWidth ?? 88,
                  height: circleHeight ?? 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleColor ?? Colors.indigo,
                    border: Border.all(
                      color: const Color(0xFFffffff).withOpacity(0.5),
                      width: 1.5,
                    ),
                  ),
                  child: circleBackground ??
                      const Icon(Icons.person, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: -70,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFffffff).withOpacity(0.5),
                        width: 1.5,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: circlePositionColor ?? Colors.green,
                      child: Text(
                        circleText ?? "2",
                        style: userPositionTextStyle ??
                            const TextStyle(color: Colors.white, fontSize: 9),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.26,
            child: Text(
              name ?? 'Sadia Afrin',
              textAlign: TextAlign.center,
              style: userNameTextStyle ??
                  GoogleFonts.roboto(
                    textStyle: AppTheme.light.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFffffff),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomZigZagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double triangleHeight = 6;
    const double triangleWidth = 13;

    final path = Path();

    // Start from top-left
    path.moveTo(0, 0);
    path.lineTo(0, size.height - triangleHeight);

    // Make a series of upward-pointing triangles
    for (double x = 0; x < size.width; x += triangleWidth) {
      path.lineTo(x + triangleWidth / 2, size.height - triangleHeight * 2);
      path.lineTo(x + triangleWidth, size.height - triangleHeight);
    }

    // Right edge and top
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
