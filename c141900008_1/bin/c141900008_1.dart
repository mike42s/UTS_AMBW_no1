import 'dart:convert';
import 'dart:io';

import 'dart:math';

int fungsi_pohon(int input, String a) {
  int counter = 0;
  int h = a.length;
  int c1 = 0, c2 = 0;
  int b1 = 0, b2 = 0;

  int x = a.codeUnitAt(0);
  //print(x);
  int y = a.codeUnitAt(h - 1);
  stdout.write((String.fromCharCode(x)));
  stdout.write((String.fromCharCode(y)));
  // if (input > 9) {
  //   b1 = y; // 2
  //   c2 = y;
  //   b2 = x;
  //   c1 = x; // 1
  // } else {
  //   b1 = x;
  //   c2 = x;
  //   b2 = y;
  //   c1 = y;
  // }
  b1 = x;
  c2 = x;
  b2 = 65;
  c1 = 65;
  ;
  bool xs = true;
  int counter3 = 0;
  //  for (int k = 0; k < ((input - i - 1) / 2)
  int mid = (input / 2).truncate();
  for (int i = 1; i <= input; i++) {
    int temp = 0;
    //print(xs);
    if (input % 2 != 0) {
      counter = 0;
      if (i < (input / 2).round()) {
        int temp = 0;
        for (int k = mid; k >= i; k--) {
          stdout.write("*");
        }
        for (int j = 0; j < i * 2 - 1; j++) {
          if (i % 2 == 0) {
            if (j % 2 == 0) {
              //stdout.write((c1).toString());
              //print(String.fromCharCode(i));
              //print(counter3);
              int y = a.codeUnitAt(temp);
              stdout.write((String.fromCharCode(y)));
              temp++;
            } else {
              stdout.write(" ");
            }
          } else {
            if (j % 2 == 0 || i == 1) {
              //stdout.write((c1).toString());

              int y = a.codeUnitAt(temp);
              stdout.write((String.fromCharCode(y)));
              temp++;
            } else {
              stdout.write(" ");
            }
          }
        }
        for (int k = mid; k >= i; k--) {
          stdout.write("*");
        }
      } else if ((input + 1) / 2 == i) {
        int temp = 0;
        for (int j = 0; j < input; j++) {
          if (j % 2 == 0) {
            int y = a.codeUnitAt(temp);
            stdout.write((String.fromCharCode(y)));
            temp++;
          } else {
            stdout.write(" ");
          }
        }
      } else {
        int temp = 0;
        if (counter3 == a.length - 1) {
          xs == false;
        }
        for (int k = i - mid; k > 1; k--) {
          stdout.write("*");
        }
        for (int j = (input + 1 - i) * 2 - 1; j > 0; j--) {
          if (i % 2 == 0) {
            if (j % 2 == 1) {
              int y = a.codeUnitAt(temp);
              stdout.write((String.fromCharCode(y)));
              temp++;
            } else {
              stdout.write(" ");
            }
          } else {
            if (j % 2 == 1) {
              int y = a.codeUnitAt(temp);
              stdout.write((String.fromCharCode(y)));
              temp++;
            } else {
              stdout.write(" ");
            }
          }
        }
        for (int k = i - mid; k > 1; k--) {
          stdout.write("*");
        }
      }
      c1++;
      stdout.write("\n");
    }
  }
  return 0;
}

void main(List<String> arguments) {
  //Sail
  stdout.write("Masukkan Kata : ");
  String? Input2 = stdin.readLineSync();
  stdout.write("Masukkan Angka : ");
  String? Input = stdin.readLineSync();
  int angka = int.parse(Input!);
  print(angka);
  if (angka % 2 == 0) //Genap
  {
    stdout.write(angka);
  } else {
    //Ganjil
    fungsi_pohon(angka, Input2!);
  }
}
