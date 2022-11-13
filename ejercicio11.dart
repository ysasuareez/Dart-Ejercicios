import 'dart:io';

void main() {
  /**
 * 11. Realiza en la clase vehículo un mixin. Para ello, realiza varias clases 
 * en las que tengan determinadas propiedades. Por ejemplo, vehículo puede ser 
 * una clase abstracta, donde heredan: patinetes, bicicletas, motocicletas, 
 * coche, camión. Pueden tener una serie de características, como remolque, 
 * llevar más de una persona, número de ruedas, eléctrico…
 */

  Motocicleta moto =
      new Motocicleta(reposa_pies: 4, anio: 2020, matricula: "1234ABC");
  Coche coche = new Coche(ventanas: 4, anio: 2020, matricula: "1234ABC");
  Patinete patinete = new Patinete(frenos: 4, anio: 2020, matricula: "1234ABC");
  Bicicleta bici =
      new Bicicleta(ruedines_extra: 2, anio: 2020, matricula: "1234ABC");
  Camion camion = new Camion(ruedas: 10, anio: 2020, matricula: "1234ABC");

  print("cambiaremos la gasolina del coche de 20 a 30:");
  print(coche.getGasolina());
  coche.setGasolina(30);
  print(coche.getGasolina());

  print("cambiaremos las ruedas del camion de 10 a 8:");
  print(camion.getRuedas());
  camion.setRuedas(8);
  print(camion.getRuedas());
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

  int getReposaPies() {
    return this.reposa_pies;
  }

  void setReposaPies(int reposa_pies) {
    this.reposa_pies = reposa_pies;
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
  int getVentanas() {
    return this.ventanas;
  }

  void setVentanas(int ventanas) {
    this.ventanas = ventanas;
  }
}

class Patinete extends Vehiculo {
  int frenos = 1;

  /**
   * CONSTRUCTOR
   */
  Patinete({required this.frenos, required int anio, required String matricula})
      : super(anio, matricula);

  /**
   * GETTERS AND SETTERS
   */
  int getFrenos() {
    return this.frenos;
  }

  void setFrenos(int frenos) {
    this.frenos = frenos;
  }
}

class Bicicleta extends Vehiculo {
  int ruedines_extra = 2;

  /**
   * CONSTRUCTOR
   */
  Bicicleta(
      {required this.ruedines_extra,
      required int anio,
      required String matricula})
      : super(anio, matricula);

  /**
   * GETTERS AND SETTERS
   */
  int getRuedines_extra() {
    return this.ruedines_extra;
  }

  void setRuedines_extra(int ruedines_extra) {
    this.ruedines_extra = ruedines_extra;
  }
}

class Camion extends Vehiculo {
  int ruedas = 8;

  /**
   * CONSTRUCTOR
   */
  Camion({required this.ruedas, required int anio, required String matricula})
      : super(anio, matricula);

  /**
   * GETTERS AND SETTERS
   */
  int getRuedas() {
    return this.ruedas;
  }

  void setRuedas(int ruedas) {
    this.ruedas = ruedas;
  }
}
