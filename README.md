<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A responsive and customizable Flutter package that offers several types of leaderboard UIs — easy to use and
perfect for showcasing rankings in apps for gaming, education, fitness, and more

## Features

- Custom child widgets
- Three types of leaderboard default, gradient, zigzag

## Supported platforms

- Android
- IOS
- Web
- Desktop

## Installation

Add `leaderboard_ui` to your `pubspec.yaml` dependencies. And import it:

```dart
import 'package:leaderboard_ui/leaderboard_ui.dart';

```

## How to use

Example

```dart
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            Podium(
                name: 'Sadia Afrin',
                isLeft: true,
                circleText: '2',
            ),
            FirstPodium(name: 'John Doe', circleText: '1'),
            Podium(
                name: 'Sumaiya Ahmed',
                isLeft: false,
                circleText: '3',
            ),
        ],
),
```

```dart
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            ZigzagPodium(
                name: 'Sadia Afrin',
                isLeft: true,
                circleText: '2',
            ),
            ZigzagFirstPodium(name: 'John Doe', circleText: '1'),
            ZigzagPodium(
                name: 'Sumaiya Ahmed',
                isLeft: false,
                circleText: '3',
            ),
        ],
),
```

```dart
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
        children: [
            RoundedGradientPodium(
                name: 'Sadia Afrin',
                isLeft: true,
                circleText: '2',
            ),
            RoundedGradientPodium(name: 'John Doe', circleText: '1'),
            RoundedGradientPodium(
                name: 'Sumaiya Ahmed',
                isLeft: false,
                circleText: '3',
            ),
        ],
),
```

## Preview


