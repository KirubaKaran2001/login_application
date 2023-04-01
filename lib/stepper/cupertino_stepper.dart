// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:login_application/screens/global.dart';

// class CupertinoStepper extends StatefulWidget {
//   const CupertinoStepper({super.key});

//   @override
//   State<CupertinoStepper> createState() => _CupertinoStepperState();
// }

// class _CupertinoStepperState extends State<CupertinoStepper> {
//   List<IconData> stepIcons = [
//     Icons.person,
//     Icons.home,
//     Icons.cabin,
//     Icons.indeterminate_check_box,
//     Icons.airplane_ticket,
//   ];
//   final List<String> titles = ["step1", "step2", "step3", "step4", "step5"];
//   int _curStep = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StepProgressView(
//         icons: stepIcons,
//         width: MediaQuery.of(context).size.width,
//         curStep: _curStep,
//         color: const Color(0xffe5649e),
//         titles: titles,
//       ),
//     );
//   }
// }
