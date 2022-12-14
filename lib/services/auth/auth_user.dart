import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//Internals never gonna change
@immutable
class AuthUser {
  final String id;
  final String email;
  final bool isEmailVerified;

  const AuthUser({
    required this.id,
    required this.email,
    required this.isEmailVerified,
  });

  // 15 : 17 : 20
  // Factory constructor
  factory AuthUser.fromFirebase(User user) => AuthUser(
        id: user.uid,
        email: user.email!,
        isEmailVerified: user.emailVerified,
      );
}
