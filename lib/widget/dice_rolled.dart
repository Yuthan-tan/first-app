import 'package:flutter/material.dart';

class DiceRolled extends StatefulWidget {
  const DiceRolled({super.key});

  @override
  State<DiceRolled> createState() => _DiceRolledState();
}

class _DiceRolledState extends State<DiceRolled> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }

  void backDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-1.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 10,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              onPressed: backDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 10,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Back Dice'),
            ),
          ],
        ),
      ],
    );
  }
}
