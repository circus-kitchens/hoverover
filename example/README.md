# HoverOver Widget Examples

This Flutter app demonstrates various use cases and features of the **HoverOver** widget package. The HoverOver widget provides smooth hover animations for Flutter web and desktop applications.

## 🎯 What's Included

This example app showcases 6 different categories of hover effects:

### 1. Basic Hover Effects
- **Hover Up**: Simple upward movement on hover
- **Hover Right**: Rightward translation effect  
- **Diagonal**: Combined X and Y axis movement

### 2. Custom Animation Duration
- **Fast (100ms)**: Quick hover response
- **Default (200ms)**: Standard animation timing
- **Slow (500ms)**: Smooth, gradual transitions

### 3. Direction-Based Movements
Interactive directional pad showing:
- Up, Down, Left, Right movements
- Visual feedback with arrow icons
- Different colors for each direction

### 4. Interactive Cards
- **Profile Card**: User profile with hover color changes
- **Product Card**: E-commerce style card with hover effects
- Enhanced shadows and color transitions

### 5. Button Variations
- **Primary Button**: Standard button with lift effect
- **Outline Button**: Border-style button with fill animation
- **Icon Button**: Circular floating action button
- **Gradient Button**: Multi-color gradient with complex shadows

### 6. Complex Transformations
- **Large Movement**: Dramatic position changes
- **Multi-Direction**: Combined X/Y translations
- **Subtle & Smooth**: Refined animations with layered shadows

## 🚀 Getting Started

To run this example:

```bash
cd example
flutter pub get
flutter run -d chrome  # For web
# or
flutter run -d macos   # For desktop
```

## 📱 HoverOver Widget Usage

The HoverOver widget accepts these parameters:

```dart
HoverOver(
  animationDurationInMilliseconds: 200,  // Optional: Animation speed
  translateXAxis: 0.0,                   // Optional: X-axis movement
  translateYAxis: -10.0,                 // Optional: Y-axis movement
  builder: (isHovered) {
    // Return your widget here
    // isHovered tells you the current hover state
    return Container(
      color: isHovered ? Colors.blue : Colors.grey,
      child: Text('Hover me!'),
    );
  },
)
```

## 🎨 Key Features Demonstrated

- **Smooth Animations**: Various animation durations and easing
- **Multi-directional Movement**: X and Y axis translations
- **State-based Styling**: Different styles for hovered/unhovered states
- **Complex UI Components**: Cards, buttons, and interactive elements
- **Shadow Effects**: Dynamic shadow changes on hover
- **Color Transitions**: Smooth color interpolations
- **Responsive Design**: Works across different screen sizes

## 💡 Tips for Usage

1. **Keep movements subtle** - Small translations (5-15px) often work best
2. **Match animation duration to UI context** - Buttons can be fast (100-200ms), cards can be slower (300-500ms)
3. **Combine with color/shadow changes** - Movement + visual changes create compelling effects
4. **Test on target platforms** - Hover effects are primarily for web/desktop
5. **Consider accessibility** - Ensure hover states don't hide important information

## 🔗 Learn More

- [HoverOver Package Documentation](../README.md)
- [Flutter Hover Documentation](https://docs.flutter.dev/development/ui/advanced/gestures#mouse-events)
- [Material Design Hover Guidelines](https://material.io/design/interaction/states.html#hover)
