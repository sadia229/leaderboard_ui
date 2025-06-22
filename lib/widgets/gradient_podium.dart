import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leaderboard_ui/theme/app_theme.dart';

class RoundedGradientPodium extends StatelessWidget {
  final Color? background;
  final Color? circleColor;
  final Color? circlePositionColor;
  final String? circleText;
  final String? name;
  final String? userScore;
  final String? userName;
  final bool? isFirstPosition;
  final double? circleWidth;
  final double? circleHeight;
  final Widget? circleBackgroundWidget;
  final TextStyle? userPositionTextStyle;
  final TextStyle? userNameTextStyle;
  final TextStyle? userScoreTextStyle;
  final Gradient? gradient;

  const RoundedGradientPodium({
    Key? key,
    this.background,
    this.circleColor,
    this.circlePositionColor,
    this.circleText,
    this.name,
    this.userScore,
    this.userName,
    this.isFirstPosition,
    this.circleWidth,
    this.circleHeight,
    this.circleBackgroundWidget,
    this.userPositionTextStyle,
    this.userNameTextStyle,
    this.userScoreTextStyle,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      margin: const EdgeInsets.only(right: 4.0),
      decoration: BoxDecoration(
        gradient: gradient ??
            LinearGradient(
              colors: [
                Colors.deepPurple.shade50,
                Colors.deepPurple.shade100,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(100.0),
          topRight: Radius.circular(100.0),
          //bottomRight: Radius.circular(isLeft? 0.0:16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isFirstPosition == true) const SizedBox(height: 16),
          Stack(
            clipBehavior: Clip.none,
            children: [
              if (isFirstPosition == true)
                Positioned(
                  right: 0,
                  top: -20,
                  child: Image.asset(
                    // 'lib/assets/crown.png',
                    'assets/crown.png',
                    height: 32,
                  ),
                ),
              Container(
                width: circleWidth ?? 62,
                height: circleHeight ?? 62,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: circleColor ?? Colors.deepPurple.shade300,
                  border: Border.all(
                    color: const Color(0xFFffffff).withOpacity(0.5),
                    width: 1.5,
                  ),
                ),
                child: circleBackgroundWidget ??
                    const Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                right: 0,
                //left: 0,
                bottom: -5,
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
            ],
          ),
          const SizedBox(height: 28),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.26,
            child: Text(
              name ?? 'Sadia Afrin',
              textAlign: TextAlign.center,
              style: userNameTextStyle ??
                  GoogleFonts.roboto(
                    textStyle: AppTheme.light.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            userScore ?? '3087',
            style: userScoreTextStyle ??
                GoogleFonts.roboto(
                  textStyle: AppTheme.light.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
