import 'dart:convert';
import 'dart:io';

void main() {
  String? input = stdin.readLineSync(encoding: utf8);
  
  // Trata entrada nula ou vazia
  if (input == null || input.trim().isEmpty) {
    print("Entrada vazia!");
    return;
  }
  
  // Trata formato com vírgula (que não é o padrão aceito pelo Dart para decimais)
  if (input.contains(',')) {
    print("Formato numérico inválido!");
    return;
  }
  
  // Tenta converter para double para verificar se é algum tipo de número válido
  double? tempDouble = double.tryParse(input);
  if (tempDouble == null) {
    print("Não é um número!");
    return;
  }
  
  // Tenta converter para inteiro
  int? num = int.tryParse(input);
  if (num == null) {
    print("Não é inteiro!");
    return;
  }

  // Verifica se o número é negativo
  if (num < 0) {
    print("Número negativo!");
    return;
  }
  
  // Casos especiais: 0 e 1 não são primos
  if (num == 0 || num == 1) {
    print("Não é primo!");
    return;
  }
  
  // Verifica se o número é primo
  bool resp = true;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      resp = false;
      break;
    }
  }
  
  if (resp) {
    print("É primo!");
  } else {
    print("Não é primo!");
  }
}