import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPositionPodium extends StatelessWidget {
  final Color? background;
  final Color? circleColor;
  final Color? circlePositionColor;
  final String? circleText;
  final String? name;
  final String? userScore;
  final String? userName;
  final bool? isLeft;
  final TextStyle? userPositionTextStyle;
  final TextStyle? userNameTextStyle;
  final TextStyle? userScoreTextStyle;
  final Widget? circleBackground;

  const FirstPositionPodium({
    Key? key,
    this.background,
    this.circleColor,
    this.circlePositionColor,
    this.circleText,
    this.name,
    this.userScore,
    this.userName,
    this.isLeft,
    this.userPositionTextStyle,
    this.userNameTextStyle,
    this.userScoreTextStyle,
    this.circleBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: background ?? const Color(0xFF252A40),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.translate(
            offset: const Offset(0, -55),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
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
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: -8,
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
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Text(
              name ?? 'Sadia Afrin',
              textAlign: TextAlign.center,
              style: userNameTextStyle ??
                  GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFffffff),
                        ),
                  ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            userScore ?? '3087',
            style: userScoreTextStyle ??
                GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                ),
          ),
        ],
      ),
    );
  }
}
