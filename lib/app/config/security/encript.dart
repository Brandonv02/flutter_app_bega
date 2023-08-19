import 'dart:convert';

import 'package:crypto/crypto.dart';

String encript(String password){
  var bytes = utf8.encode('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjd2ZpZm12YnF4bGxheWhpdnFhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTEyNTgwOTYsImV4cCI6MjAwNjgzNDA5Nn0.o2Z3SoTIBu8kYUS46ZLPVq4ZRQPUwIlrSy6hkwiM_gs');
  var hmacSha512 = Hmac(sha512, bytes);
  var digest = hmacSha512.convert(utf8.encode(password));
  return digest.toString();
}