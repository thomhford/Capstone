import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  final VoidCallback onPressed;
  // final VoidCallback onLongPress;
  // final VoidCallback onLongPressEnd;

  const CameraButton({
    super.key,
    required this.onPressed,
    // required this.onLongPress,
    // required this.onLongPressEnd,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onLongPress: onLongPress,
      // onLongPressEnd: (LongPressEndDetails details) {
      //   onLongPressEnd();
      // },
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.transparent,
          elevation: 0,
          side: const BorderSide(color: Colors.white, width: 4),
        ),
        child: SizedBox(
          width: 60,
          height: 60,
          child:
              // Inner circle with spacing
              Center(
            child: Container(
              width: 59,
              height: 59,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
