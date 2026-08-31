import 'dart:convert';
import 'dart:io';

void main() {
  String? input = stdin.readLineSync(encoding: utf8);
  int? num = int.tryParse(input ?? '');
  if (num == null) {
    print("Entrada vazia!");
    return;
  }
  if (num < 0) {
    print("Número negativo!");
    return;
  }
  else if (num == 0 || num == 1) {
    print("Não é primo!");
  }
  bool resp = true;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      resp = false;
      break;
    }
  }
  if (resp)
    print("É primo!");
  else
    print("Não é primo!");
}
