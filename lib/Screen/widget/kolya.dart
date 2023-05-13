// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// Widget _buildTask(BuildContext context, Task task) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => Detailpage(task)));
//       },
//       child: Container(
//         padding: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: task.bgColor,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Icon(
//               task.iconData,
//               color: task.iconColor,
//               size: 35,
//             ),
//             const SizedBox(height: 25),
//             Text(
//               task.title!,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 _buildTaskStatus(
//                   task.btnColor!,
//                   task.iconColor!,
//                   '${task.left} left',
//                 ),
//                 const SizedBox(width: 5),
//                 _buildTaskStatus(
//                   Colors.white,
//                   task.iconColor!,
//                   '${task.done} done',
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
