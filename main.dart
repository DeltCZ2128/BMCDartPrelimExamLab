import 'dart:io';

void main() {

   double passMark = 60.0;
   double maxPoints = 100.0;
   double assignWeight = 0.2;
   double midWeight = 0.3;
   double finalWeight = 0.5;

  print("What is the student's name?");
  String? name = stdin.readLineSync();

  print("Enter assignment score:");
  double assignScore = double.parse(stdin.readLineSync()!);
  print("Enter midterm score:");
  double midScore = double.parse(stdin.readLineSync()!);
  print("Enter final exam score:");
  double finalScore = double.parse(stdin.readLineSync()!);

  double totalGrade = (assignScore * assignWeight) + 
                     (midScore * midWeight) + 
                     (finalScore * finalWeight);

  String outcome = totalGrade >= passMark ? "Passed" : "Failed";

  print("Student: $name");
  print("Scores - Assignment: ${assignScore.toStringAsFixed(1)}, "
      "Midterm: ${midScore.toStringAsFixed(1)}, "
      "Final: ${finalScore.toStringAsFixed(1)}");
  print("Final Grade: ${totalGrade.toStringAsFixed(1)}");
  print("Result: $outcome");
}
