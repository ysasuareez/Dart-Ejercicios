import 'dart:io';

void main() {
  /**
  * 10. Realiza la implementación de la clase abstracta vehículo. De esta clase 
  * heredan la clase motocicleta y la clase coche. Establece propiedades en cada 
  * una de las clases y sobreescribe alguna de ellas para que compruebes el 
  * funcionamiento de las clases en Dart.
  */

  Motocicleta moto1 =
      new Motocicleta(reposa_pies: 4, anio: 2020, matricula: "1234ABC");
  Coche coche1 = new Coche(ventanas: 4, anio: 2020, matricula: "1234ABC");

  print(coche1.getGasolina());
  coche1.setGasolina(30);
  print(coche1.getGasolina());
}

abstract class Vehiculo {
  /**
   * ATRIBUTOS   */
  int? _anio;
  String? matricula;
  bool arrancado = false;
  double gasolina = 20;

  /**
   * CONSTRUCTOR
   */
  Vehiculo(int anio, String matricula) {
    this._anio = anio;
    this.matricula = matricula;
  }

  /**
   * GETTERS AND SETTERS
   */
  int? getAnio() {
    return this._anio;
  }

  String? getMatricula() {
    return this.matricula;
  }

  double getGasolina() {
    return this.gasolina;
  }

  void setAnio(int anio) {
    this._anio = anio;
  }

  void setMatricula(String matricula) {
    this.matricula = matricula;
  }

  void setGasolina(double gasolina) {
    this.gasolina = gasolina;
  }

  /**
   * METODOS
   */
  void arrancarVehiculo() {
    if (!arrancado) {
      if (gasolina > 10) {
        gasolina -= 5;
        arrancado = true;
        print("El coche ha sido arrancado.");
      } else {
        print("Imposible arrancar. Necesita repostar.");
      }
    } else {
      print("El coche ya está arrancado.");
    }
  }

  void apagarVehiculo() {
    if (arrancado) {
      arrancado = false;
      print("El coche ha sido apagado.");
    } else {
      print("El coche ya esta apagado.");
    }
  }

  void repostar() {
    if (!arrancado) {
      print("¿Cuánto desea repostar?");
      String? respuesta = stdin.readLineSync();
      this.gasolina += int.parse(respuesta!);
      print("Gasolina actual: $gasolina");
    } else {
      print("El coche debe estar apagado para repostar.");
    }
  }
}

class Motocicleta extends Vehiculo {
  int reposa_pies = 2;

  /**
   * CONSTRUCTOR
   */

  Motocicleta(
      {required this.reposa_pies, required int anio, required String matricula})
      : super(anio, matricula);

  /**
   * GETTERS AND SETTERS
   */
  void setAnio(int anio) {
    this._anio = anio;
  }

  void setMatricula(String matricula) {
    this.matricula = matricula;
  }
}

class Coche extends Vehiculo {
  int ventanas = 4;

  /**
   * CONSTRUCTOR
   */
  Coche({required this.ventanas, required int anio, required String matricula})
      : super(anio, matricula);

  /**
   * GETTERS AND SETTERS
   */
  void setAnio(int anio) {
    this._anio = anio;
  }

  void setMatricula(String matricula) {
    this.matricula = matricula;
  }
}
