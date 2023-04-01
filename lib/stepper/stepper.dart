// import 'package:flutter/material.dart';

// class StepperExample extends StatefulWidget {
//   const StepperExample({super.key});

//   @override
//   State<StepperExample> createState() => _StepperExampleState();
// }

// class _StepperExampleState extends State<StepperExample> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Stepper'),
//         ),
//         body: Stepper(
//           currentStep: count,
//           onStepContinue: () {
//             if (count < 2) {
//               setState(() {
//                 count += 1;
//               });
//             }
//           },
//           onStepCancel: () {
//             if (count > 0) {
//               setState(() {
//                 count -= 1;
//               });
//             }
//           },
//           onStepTapped: (index) {
//             setState(() {
//               count = index;
//             });
//           },
//           steps: const [
//             Step(
//               title: Text('Name'),
//               content: TextField(),
//               isActive: true,
//             ),
//             Step(
//               title: Text('Age'),
//               content: TextField(),
//               isActive: true,
//             ),
//             Step(
//               title: Text('Address'),
//               content: TextField(),
//               isActive: true,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
