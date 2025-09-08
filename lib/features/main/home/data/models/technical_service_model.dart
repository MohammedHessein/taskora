import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/generated/assets.dart';

class TechnicalServiceModel {
  const TechnicalServiceModel({
    required this.title,
    required this.iconPath,
    this.goesToBookingPage = false,
  });

  final String title;
  final String iconPath;
  final bool goesToBookingPage;
}

List<TechnicalServiceModel> getTechnicalServices(BuildContext context) => [
  TechnicalServiceModel(
    title: context.tr.electricity,
    iconPath: Assets.imagesElectricity,
  ),
  TechnicalServiceModel(
    title: context.tr.categories_plumbing,
    iconPath: Assets.imagesPlumping,
  ),
  TechnicalServiceModel(
    title: context.tr.airConditioning,
    iconPath: Assets.imagesAirConditioning,
  ),
  TechnicalServiceModel(
    title: context.tr.categories_carpentry,
    iconPath: Assets.imagesCarpentary,
  ),
  TechnicalServiceModel(
    title: context.tr.satellite,
    iconPath: Assets.imagesStallite,
  ),
  TechnicalServiceModel(
    title: context.tr.categories_home_appliances,
    iconPath: Assets.imagesHomeAppliances,
  ),
  TechnicalServiceModel(
    title: context.tr.categories_security,
    iconPath: Assets.imagesSecurity,
    goesToBookingPage: true,
  ),
  TechnicalServiceModel(
    title: context.tr.categories_tiling,
    iconPath: Assets.imagesTilling,
    goesToBookingPage: true,
  ),
  TechnicalServiceModel(
    title: context.tr.satellite,
    iconPath: Assets.imagesStallite2,
    goesToBookingPage: true,
  ),
  TechnicalServiceModel(
    title: context.tr.categories_cleaning,
    iconPath: Assets.imagesCleaning,
    goesToBookingPage: true,
  ),
];
