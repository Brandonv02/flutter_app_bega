import 'dart:convert';
import 'package:crypto/crypto.dart';

String encript(String password) {
  var bytes = utf8.encode('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVxcmplY2hqZW1vdXNlZGtjdnV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTEyNTgxMjYsImV4cCI6MjAwNjgzNDEyNn0.a35RDaTqbZI6OzyUVo5e-ARjl07X9SgVT8wwx6XTiug');
    var hmacSha512 = Hmac(sha512, bytes);
    var digest = hmacSha512.convert(utf8.encode(password));
    return digest.toString();
  }
