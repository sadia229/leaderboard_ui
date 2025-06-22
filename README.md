
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
<p float="left">
  <img src="https://github.com/user-attachments/assets/99032cdc-669f-409e-b2b8-dbff768f4f89" width="470""/>
  <img src="https://github.com/user-attachments/assets/47d757af-aed3-4e0f-8101-c9a2abc14e27" width="470""/>
  <img src="https://github.com/user-attachments/assets/2668d896-e225-444e-850f-2585999417b7" width="470""/>
</p>


