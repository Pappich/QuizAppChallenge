import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final correctAnswer = '  คำตอบที่ถูกต้อง คือ ${itemData['correct_answer']}';
    final userAnswer =    '  คำตอบที่คุณตอบ คือ ${itemData['user_answer']}';
    
    return Container(
      //frame QA
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 49, 49, 56), 
          width: 2.0, 
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10), 
        ),
      ),

      padding: const EdgeInsets.all(10), 
      margin: const EdgeInsets.symmetric(vertical: 10), 
      
      child: Row(
        children: [
          // QuestionIndentifier

          const SizedBox(width: 20),
          // Expanded ทำให้ Column กินพื้นที่ให้เยอะสุดเท่าที่ทำได้ - ลองลบออกเพื่อเทียบความต่างดูได้นะ
          // (จากที่เรียนในคลาสว่า Column กินพื้นที่บนล่างจนสุด(Height) แต่ซ้ายขวา(width)จะกว้างเท่ากับขนาด child widget)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: const TextStyle(
                    fontFamily: 'MN NaemNueang',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 25, 100),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  correctAnswer, 
                  style: const TextStyle(
                    fontFamily: 'MN NaemNueang',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 51, 144, 54),
                  ),
                ),
                Text(
                  userAnswer,
                  style: const TextStyle(
                    fontFamily: 'MN NaemNueang',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 10, 25, 100),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}