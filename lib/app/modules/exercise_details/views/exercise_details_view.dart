import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lbp_web/app/modules/exercise_details/views/action1_view.dart';

import '../controllers/exercise_details_controller.dart';

class ExerciseDetailsView extends GetView<ExerciseDetailsController> {
  const ExerciseDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Center(
            // child: exerciseWidget(context),
            ),
      ),
    );
  }
// Widget exerciseWidget(BuildContext context) {
//   return ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       backgroundColor: Colors.green,
//       minimumSize: Size(130, 130),
//       maximumSize: Size(180, 180),
//       alignment: Alignment.centerLeft,
//       textStyle: TextStyle(fontSize: 20),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('운동 시작!'),
//         const Icon(
//           Icons.sports_gymnastics,
//         ),
//       ],
//     ),
//     onPressed: () {
//       Navigator.push(context,
//           MaterialPageRoute(builder: (context) => Action1View()));
//     },
//   );
// }
}
