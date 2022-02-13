import 'package:encrypt/encrypt.dart' as encrypt;

class Metodi {
  late final chiave, iv;
  late final encrypter;

  Metodi() {
    chiave = encrypt.Key.fromLength(32);
    iv = encrypt.IV.fromLength(8);
    encrypter = encrypt.Encrypter(encrypt.AES(chiave));
  }

  late final _encrypted, decrypted;

  String encryptParola(String parametro) {
    var titoloEncrypted = encrypter.encrypt(parametro, iv: iv);
    print(
        "-----------------------------------------------------------------------");
    print("titoloCriptato criptata: " + titoloEncrypted.base64);
    print(
        "-----------------------------------------------------------------------");
    return titoloEncrypted.base64;
  }

  String DecriptaParola(String parametro) {
    var C = encrypt.Encrypted.fromBase64(parametro);
    decrypted = encrypter.decrypt(C, iv: iv);
    return decrypted;
  }
}
