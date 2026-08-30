import 'dart:convert';
import 'dart:io';

void main() {
  String? input = stdin.readLineSync(encoding: utf8);
  int? num = int.tryParse(input ?? '');
  if (num == null) {
    print("Houve erro, insira um valor válido");
    return;
  }
  if (num < 2) {
    print("não é primo");
    return;
  }
  bool resp = true;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      resp = false;
      break;
    }
  }
  if (resp)
    print("é primo");
  else
    print("não é primo");
}