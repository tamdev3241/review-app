import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeInitial extends ThemeState {}

class ThemeComplete extends ThemeState {
  final ThemeData theme;
  final String themeCode;
  ThemeComplete({required this.theme, required this.themeCode});

  @override
  List<Object?> get props => [theme];
}
