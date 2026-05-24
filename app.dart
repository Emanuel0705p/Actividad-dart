void main() {
  CuentaBancaria c = new CuentaBancaria();
  c.titular = "Emanuel Perez";
  c.saldo = 900.000;
  c.deposito(700.000);
  c.retirar(200.000);
  print(c.consul());

  if (c.cuentaActiva()) {
    print("cuenta activa frecuente");
  } else {
    print("su cuenta no esta siendo usada");
  }
}

class CuentaBancaria {
  // Atributos
  String? titular;
  double? saldo;

  // Metodos
  void deposito(double deposito) {
    this.saldo = this.saldo! + deposito;
    print("el diposito fue realizado, nuevo valor $saldo");
  }

  void retirar(double depo) {
    if (depo > saldo!) {
      print("fondo insufisiente $saldo ");
    } else {
      this.saldo = this.saldo! - depo;
      print("el saldo retirado es $saldo");
    }
  }

  double consul() => this.saldo!;

  bool cuentaActiva() {
    if (saldo! > 0) {
      return true;
    } else {
      return false;
    }
  }
}
