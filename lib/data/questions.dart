import 'package:flutter_application_1/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'การจำแนก Widget ประเภท Stylistic Element คือข้อใดต่อไปนี้?', 
    [
      'Font', 
      'Menu', 
      'Button', 
      'Alignment',
    ],
    0,
  ),

   QuizQuestion(
    'Stateless คือข้อใดต่อไปนี้?', 
    [
      'หน้าอธิบายวิธีการเล่นเกม', 
      'หน้าแสดง score ที่ได้จากการเล่นเกม', 
      'หน้าแสดง score Board', 
      'หน้ากรอก input ชื่อผู้เล่น',
    ],
    0,
  ),

  QuizQuestion(
    'Stateful หมายถึงอะไร?', 
    [
      'state หรือมีสภาวะการเปลี่ยนแปลง ไปตามข้อมูลที่ได้รับหรือจากการกำหนดจากผู้ใช้', 
      'state หรือไม่มีสภาวะการเปลี่ยนแปลง', 
      'Text widget', 
      'ไม่มีข้อที่ถูกต้อง',
    ],
    0,
  ),

  QuizQuestion(
    'padding คือการจำแนก Widget ประเภทใด?', 
    [
      'Structural Element', 
      'Stylistic Element', 
      'Aspect of Layout', 
      'Material Element',
    ],
    2,
  ),

  QuizQuestion(
    'ความแตกต่างระหว่าง ListView และ SingleChildScrollView คือข้อใด?', 
    [
      'SingleChildScrollView ถูกใช้บ่อยกับ layout ที่ไม่ซับซ้อน', 
      'ListView รองรับ Widget แบบเดียวกันแต่ SingleChildScrollView รองรับการแสดง Widget ที่หลากหลาย', 
      'SingleChildScrollView จะเป็นโครงสร้างข้อมูลเดียวกัน', 
      'ListView รองรับการแสดง Widget ที่หลากหลายแต่ SingleChildScrollView รองรับ Widget แบบเดียวกัน',
    ],
    1,
  ),

  QuizQuestion(
    'คำสั่ง flutter emulators มีไว้ใช้ในกรณีใด?', 
    [
      'แสดง emulators ทั้งหมดในเครื่องทั้ง android, ios', 
      'ตรวจสอบเครื่องผู้ใช้ว่าติดตั้งค่าต่างๆ สำหรับในการพัฒนาครบไหม', 
      'สร้าง device จาก emulator ในเครื่องผู้ใช้', 
      'สั่ง run flutter ในกรณีที่เครื่องเรามี device ต่ออยู่มากกว่า 1 ตัว',
    ],
    0,
  ),

  QuizQuestion(
    'Flutter ใช้ภาษาโปรแกรมอะไรในการเขียน?', 
    [
      'Java', 
      'JavaScript', 
      'Prolog', 
      'Dart',
    ],
    3,
  ),

  QuizQuestion(
    'การประกาศตัวแปร List<String> names; ในที่นี้ List หมายถึงอะไร?', 
    [
      'Arrays', 
      'อักขระ', 
      'Name', 
      'Type',
    ],
    0,
  ),

  QuizQuestion(
    'BuildContext คืออะไร?', 
    [
      'object ที่เก็บ reference ของ page', 
      'object ที่เก็บ reference ของ Widget', 
      'object ที่เก็บ reference ของ text', 
      'object ที่เก็บ reference ของ emulator',
    ],
    1,
  ),

  QuizQuestion(
    'การเข้าถึง State จากภายนอกควรคำนึงถึงกรณีใดบ้าง?', 
    [
      'parent ต้องการเข้าถึง state ของ child', 
      'child ต้องการเข้าถึง state ของ parent', 
      'A กับ B ไม่ได้เป็น parent-child แต่อยู่ใน tree เดียวกัน ต้องการเข้าถึง state กันและกัน', 
      'ถูกทั้ง 3 ข้อ',
    ],
    3,
  ),

];