

import 'dart:convert';
import 'dart:io';

import 'package:flutter_application_2/controller/controller.dart';


void main() {

  print("bem vindo a calculadora de IMC");

  double altura=0;
  double peso = 0;

  print("digite o peso");
  var line = stdin.readLineSync(encoding: utf8);
  peso = double.parse(line ?? "0");
  
try{
      if (peso<=0){
  throw Exception("altura invalida"); }
}catch (e){
    print(e);
}


  print("digite a altura");
   line = stdin.readLineSync(encoding: utf8);
  altura = double.parse(line ?? "0");

try{
      if (altura<=0){
  throw Exception("altura invalida"); }
}catch (e){
     print(e);
}
  if(altura<=0 || peso<=0 ){
      print("valores invalidos verifique o que foi digitado peso: $peso - altura: $altura ");
    }else{
  Controller controller =  Controller();
  var resultado = controller.calcularImc(peso, altura);
  print(resultado);}


}