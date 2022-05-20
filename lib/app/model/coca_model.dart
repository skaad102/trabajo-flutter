// To parse this JSON data, do
//
//     final cocoa = cocoaFromJson(jsonString);

import 'dart:convert';

Map<String, Cocoa> cocoaFromJson(String str) => Map.from(json.decode(str))
    .map((k, v) => MapEntry<String, Cocoa>(k, Cocoa.fromJson(v)));

String cocoaToJson(Map<String, Cocoa> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Cocoa {
  Cocoa({
    required this.unnamed0,
    required this.mes,
    required this.ltimo,
    required this.cocoaVar,
    required this.apertura,
    required this.mximo,
    required this.mnimo,
    required this.volumen,
    required this.hora,
    required this.grfico,
  });

  dynamic unnamed0;
  String mes;
  String ltimo;
  int cocoaVar;
  int apertura;
  int mximo;
  int mnimo;
  int volumen;
  String hora;
  String grfico;

  factory Cocoa.fromJson(Map<String, dynamic> json) => Cocoa(
        unnamed0: json["Unnamed: 0"],
        mes: json["Mes"],
        ltimo: json["Último"],
        cocoaVar: json["Var."],
        apertura: json["Apertura"],
        mximo: json["Máximo"],
        mnimo: json["Mínimo"],
        volumen: json["Volumen"],
        hora: json["Hora"],
        grfico: json["Gráfico"],
      );

  Map<String, dynamic> toJson() => {
        "Unnamed: 0": unnamed0,
        "Mes": mes,
        "Último": ltimo,
        "Var.": cocoaVar,
        "Apertura": apertura,
        "Máximo": mximo,
        "Mínimo": mnimo,
        "Volumen": volumen,
        "Hora": hora,
        "Gráfico": grfico,
      };
}
