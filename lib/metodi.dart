import 'package:encrypt/encrypt.dart' as encrypt;

class Metodi {
  late final _chiave, _iv;
  late final _encrypter;

  Metodi() {
    _chiave = encrypt.Key.fromLength(32);
    _iv = encrypt.IV.fromLength(8);
    _encrypter = encrypt.Encrypter(encrypt.AES(_chiave));
  }

  late final _encrypted, decrypted;

  String encryptParola(String parametro) {
    var titoloEncrypted = _encrypter.encrypt(parametro, iv: _iv);
    print(
        "-----------------------------------------------------------------------");
    print("titoloCriptato criptata: " + titoloEncrypted.base64);
    print(
        "-----------------------------------------------------------------------");
    return titoloEncrypted.base64;
  }

  String decriptaParola(String parametro) {
    var C = encrypt.Encrypted.fromBase64(parametro);
    decrypted = _encrypter.decrypt(C, iv: _iv);
    return decrypted;
  }
}
