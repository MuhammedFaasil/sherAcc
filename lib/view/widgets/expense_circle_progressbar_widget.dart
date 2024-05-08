// import 'dart:math' as math;
// import 'package:flutter/material.dart';

// class CircularProgressBar extends StatelessWidget {
//   final double size;
//   final List<double> values;
//   final List<Color> colors;
//   final Color trackColor;
//   final Duration animationDuration;
//   final Curve animationCurve;

//   const CircularProgressBar({
//     Key? key,
//     required this.values,
//     required this.colors,
//     required this.size,
//     this.trackColor = Colors.grey,
//     this.animationDuration = const Duration(milliseconds: 1000),
//     this.animationCurve = Curves.easeInOutCubic,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: CircularProgressBarPainter(
//         values: values,
//         colors: colors,
//         trackColor: trackColor,
//       ),
//       size: Size(size, size),
//     );
//   }
// }

// class CircularProgressBarPainter extends CustomPainter {
//   final List<double> values;
//   final List<Color> colors;
//   final Color trackColor;

//   CircularProgressBarPainter({
//     required this.values,
//     required this.colors,
//     required this.trackColor,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = math.min(size.width, size.height) / 2;
//     final strokeWidth = 15.0; // Adjust stroke width as desired

//     double startAngle = -math.pi / 2;

//     // Ensure color list length matches or exceeds values length
//     final List<Color> completeColors = colors.length >= values.length
//         ? colors
//         : colors +
//             List.generate(
//                 values.length - colors.length, (index) => Colors.transparent);

//     for (int i = 0; i < values.length; i++) {
//       final sweepAngle = 2 * math.pi * values[i];
//       final paint = Paint()
//         ..color = completeColors[i]
//         ..strokeWidth = strokeWidth
//         ..style = PaintingStyle.stroke
//         ..strokeCap = StrokeCap.round;

//       canvas.drawArc(
//         Rect.fromCircle(center: center, radius: radius),
//         startAngle,
//         sweepAngle,
//         false, // Use `false` for a non-filled arc
//         paint,
//       );

//       startAngle += sweepAngle;
//     }

//     // Draw the track circle if desired (adjust paint properties as needed)
//     final trackPaint = Paint()
//       ..color = trackColor
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     canvas.drawArc(
//       Rect.fromCircle(center: center, radius: radius),
//       0.0, // Full circle for track
//       2 * math.pi,
//       false,
//       trackPaint,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }
