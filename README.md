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

# Hoverover

A Flutter package that will give hover effect for Web and Desktop.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  hoverover: ^0.1.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:hoverover/hoverover.dart';
```

## Example
There are a number of properties that you can modify:

* *animationDurationInMilliseconds* : gives duration of the animation.
* *translateXAxis* : translation value of x axis on hover.
* *translateYAxis* : translation value of y axis on hover.
* *builder* : the widget that will be built when the hover effect is active.
* *isHovered* : a boolean that indicates if the hover effect is active or not.

<hr>

<table>
<tr>
<td>

```dart
class HoverOverExample extends StatelessWidget {
  const HoverOverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HoverOver(
          builder: (isHovered) {
            /// change color on hover
            final color = isHovered ? Colors.orange : Colors.redAccent;
            return PhysicalModel(
              color: Colors.white,
              elevation: isHovered ? 16 : 0,
              child: Container(
                  height: 50,
                  width: 200,
                  color: color,
                  child: const Center(
                    child: Text("Hoverover me"),
                  )),
            );
          },
          /// animation duration
          animationDurationInMilliseconds: 600,
          /// translation of x axis
          translateXAxis: 7,
          /// translation of y axis
          translateYAxis: 15,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

```




## Contributors
* [**Sameer Singh**](https://github.com/sameersingh2704)
* [**Felix Wöstmann**](https://github.com/felixwoestmann)
* [**Shashwat Mishra**](https://github.com/shashwatxx)
