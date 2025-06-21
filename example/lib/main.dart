import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoverOver Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HoverOverDemoPage(),
    );
  }
}

class HoverOverDemoPage extends StatelessWidget {
  const HoverOverDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('HoverOver Widget Examples'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: '1. Basic Hover Effects'),
            SizedBox(height: 20),
            BasicHoverExamples(),

            SizedBox(height: 40),
            SectionTitle(title: '2. Custom Animation Duration'),
            SizedBox(height: 20),
            AnimationDurationExamples(),

            SizedBox(height: 40),
            SectionTitle(title: '3. Direction-Based Movements'),
            SizedBox(height: 20),
            DirectionalMovementExamples(),

            SizedBox(height: 40),
            SectionTitle(title: '4. Interactive Cards'),
            SizedBox(height: 20),
            InteractiveCardExamples(),

            SizedBox(height: 40),
            SectionTitle(title: '5. Button Variations'),
            SizedBox(height: 20),
            ButtonVariationExamples(),

            SizedBox(height: 40),
            SectionTitle(title: '6. Complex Transformations'),
            SizedBox(height: 20),
            ComplexTransformationExamples(),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }
}

class BasicHoverExamples extends StatelessWidget {
  const BasicHoverExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        // Simple upward movement
        HoverOver(
          translateYAxis: -10,
          builder: (isHovered) => Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: isHovered ? Colors.blue.shade300 : Colors.blue.shade100,
              borderRadius: BorderRadius.circular(12),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.blue.withValues(alpha: 0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
            ),
            child: const Center(
              child: Text(
                'Hover Up',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        // Simple rightward movement
        HoverOver(
          translateXAxis: 10,
          builder: (isHovered) => Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: isHovered ? Colors.green.shade300 : Colors.green.shade100,
              borderRadius: BorderRadius.circular(12),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.green.withValues(alpha: 0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
            ),
            child: const Center(
              child: Text(
                'Hover Right',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        // Diagonal movement
        HoverOver(
          translateXAxis: -8,
          translateYAxis: -8,
          builder: (isHovered) => Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: isHovered
                  ? Colors.orange.shade300
                  : Colors.orange.shade100,
              borderRadius: BorderRadius.circular(12),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.orange.withValues(alpha: 0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
            ),
            child: const Center(
              child: Text(
                'Diagonal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimationDurationExamples extends StatelessWidget {
  const AnimationDurationExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        // Fast animation
        HoverOver(
          animationDurationInMilliseconds: 100,
          translateYAxis: -12,
          builder: (isHovered) => Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: isHovered ? Colors.red.shade300 : Colors.red.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.red.shade400, width: 2),
            ),
            child: const Center(
              child: Text(
                'Fast (100ms)',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        // Default animation
        HoverOver(
          translateYAxis: -12,
          builder: (isHovered) => Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: isHovered
                  ? Colors.purple.shade300
                  : Colors.purple.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.purple.shade400, width: 2),
            ),
            child: const Center(
              child: Text(
                'Default (200ms)',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        // Slow animation
        HoverOver(
          animationDurationInMilliseconds: 500,
          translateYAxis: -12,
          builder: (isHovered) => Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: isHovered ? Colors.teal.shade300 : Colors.teal.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.shade400, width: 2),
            ),
            child: const Center(
              child: Text(
                'Slow (500ms)',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DirectionalMovementExamples extends StatelessWidget {
  const DirectionalMovementExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverOver(
              translateYAxis: -15,
              builder: (isHovered) => Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: isHovered
                      ? Colors.blue.shade400
                      : Colors.blue.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.keyboard_arrow_up, size: 30),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Middle row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HoverOver(
              translateXAxis: -15,
              builder: (isHovered) => Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: isHovered
                      ? Colors.green.shade400
                      : Colors.green.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.keyboard_arrow_left, size: 30),
              ),
            ),

            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.center_focus_strong, size: 30),
            ),

            HoverOver(
              translateXAxis: 15,
              builder: (isHovered) => Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: isHovered
                      ? Colors.orange.shade400
                      : Colors.orange.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.keyboard_arrow_right, size: 30),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Bottom row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverOver(
              translateYAxis: 15,
              builder: (isHovered) => Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: isHovered ? Colors.red.shade400 : Colors.red.shade200,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.keyboard_arrow_down, size: 30),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class InteractiveCardExamples extends StatelessWidget {
  const InteractiveCardExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        // Profile card
        HoverOver(
          translateYAxis: -8,
          animationDurationInMilliseconds: 300,
          builder: (isHovered) => Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.deepPurple.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: isHovered
                      ? Colors.deepPurple.shade300
                      : Colors.deepPurple.shade100,
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isHovered ? Colors.deepPurple : Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 14,
                    color: isHovered
                        ? Colors.deepPurple.shade300
                        : Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isHovered
                        ? Colors.deepPurple
                        : Colors.deepPurple.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'View Profile',
                    style: TextStyle(
                      color: isHovered ? Colors.white : Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Product card
        HoverOver(
          translateYAxis: -8,
          animationDurationInMilliseconds: 250,
          builder: (isHovered) => Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.blue.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: isHovered
                        ? Colors.blue.shade300
                        : Colors.blue.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.phone_android,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Smartphone Pro',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isHovered ? Colors.blue : Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$599.99',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isHovered
                              ? Colors.blue.shade700
                              : Colors.green,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: isHovered ? Colors.blue : Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Add to Cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: isHovered ? Colors.white : Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonVariationExamples extends StatelessWidget {
  const ButtonVariationExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        // Primary button
        HoverOver(
          translateYAxis: -3,
          animationDurationInMilliseconds: 150,
          builder: (isHovered) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: isHovered ? Colors.deepPurple.shade700 : Colors.deepPurple,
              borderRadius: BorderRadius.circular(8),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.deepPurple.withValues(alpha: 0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.deepPurple.withValues(alpha: 0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
            ),
            child: const Text(
              'Primary Button',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Outline button
        HoverOver(
          translateYAxis: -3,
          animationDurationInMilliseconds: 150,
          builder: (isHovered) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: isHovered ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Text(
              'Outline Button',
              style: TextStyle(
                color: isHovered ? Colors.white : Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Icon button
        HoverOver(
          translateYAxis: -4,
          animationDurationInMilliseconds: 180,
          builder: (isHovered) => Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: isHovered ? Colors.green.shade600 : Colors.green,
              shape: BoxShape.circle,
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.green.withValues(alpha: 0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.green.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 28),
          ),
        ),

        // Gradient button
        HoverOver(
          translateYAxis: -3,
          translateXAxis: 2,
          animationDurationInMilliseconds: 200,
          builder: (isHovered) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: isHovered
                    ? [Colors.orange.shade600, Colors.red.shade600]
                    : [Colors.orange, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(25),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.orange.withValues(alpha: 0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.orange.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
            ),
            child: const Text(
              'Gradient Button',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ComplexTransformationExamples extends StatelessWidget {
  const ComplexTransformationExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: [
        // Large movement
        HoverOver(
          translateXAxis: -20,
          translateYAxis: -20,
          animationDurationInMilliseconds: 400,
          builder: (isHovered) => Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: isHovered
                    ? [Colors.purple.shade400, Colors.blue.shade400]
                    : [Colors.purple.shade200, Colors.blue.shade200],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.purple.withValues(alpha: 0.4),
                        blurRadius: 25,
                        offset: const Offset(0, 15),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
            ),
            child: const Center(
              child: Text(
                'Large Movement',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),

        // Multi-directional
        HoverOver(
          translateXAxis: 15,
          translateYAxis: -15,
          animationDurationInMilliseconds: 350,
          builder: (isHovered) => Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: isHovered ? Colors.teal.shade600 : Colors.teal.shade300,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isHovered ? Colors.teal.shade800 : Colors.teal.shade500,
                width: 3,
              ),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.teal.withValues(alpha: 0.5),
                        blurRadius: 20,
                        offset: const Offset(5, 10),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.3),
                        blurRadius: 8,
                        offset: const Offset(2, 4),
                      ),
                    ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.trending_up,
                    color: isHovered ? Colors.white : Colors.teal.shade800,
                    size: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Multi-Direction',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isHovered ? Colors.white : Colors.teal.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // Subtle movement with complex styling
        HoverOver(
          translateYAxis: -5,
          animationDurationInMilliseconds: 600,
          builder: (isHovered) => Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isHovered ? Colors.amber.shade400 : Colors.grey.shade300,
                width: 2,
              ),
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: Colors.amber.withValues(alpha: 0.3),
                        blurRadius: 30,
                        offset: const Offset(0, 15),
                      ),
                      BoxShadow(
                        color: Colors.orange.withValues(alpha: 0.1),
                        blurRadius: 50,
                        offset: const Offset(0, 25),
                      ),
                    ]
                  : [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.auto_awesome,
                    color: isHovered
                        ? Colors.amber.shade600
                        : Colors.grey.shade600,
                    size: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Subtle & Smooth',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isHovered
                          ? Colors.amber.shade800
                          : Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
