import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/generated/assets.dart';

class TechnicalServiceModel {
  const TechnicalServiceModel({
    required this.id,
    required this.title,
    required this.iconPath,
    this.goesToBookingPage = false,
  });
  final String id;
  final String title;
  final String iconPath;
  final bool goesToBookingPage;
}

List<TechnicalServiceModel> getTechnicalServices(BuildContext context) => [
  TechnicalServiceModel(
    id: "electricity",
    title: context.tr.electricity,
    iconPath: Assets.imagesElectricity,
  ),
  TechnicalServiceModel(
    id: "plumbing",
    title: context.tr.categories_plumbing,
    iconPath: Assets.imagesPlumping,
  ),
  TechnicalServiceModel(
    id: "carsWashing",
    title: context.tr.cars_wash,
    iconPath: Assets.imagesCarsWash,
  ),
  TechnicalServiceModel(
    id: "ac",
    title: context.tr.airConditioning,
    iconPath: Assets.imagesAirConditioning,
  ),
  TechnicalServiceModel(
    id: "carpentry",
    title: context.tr.categories_carpentry,
    iconPath: Assets.imagesCarpentary,
  ),
  TechnicalServiceModel(
    id: "satellite",
    title: context.tr.satellite,
    iconPath: Assets.imagesStallite,
  ),
  TechnicalServiceModel(
    id: "appliances",
    title: context.tr.categories_home_appliances,
    iconPath: Assets.imagesHomeAppliances,
  ),
  TechnicalServiceModel(
    id: "security",
    title: context.tr.categories_security,
    iconPath: Assets.imagesSecurity,
    goesToBookingPage: true,
  ),
  TechnicalServiceModel(
    id: "tiling",
    title: context.tr.categories_tiling,
    iconPath: Assets.imagesTilling,
    goesToBookingPage: true,
  ),
  TechnicalServiceModel(
    id: "satellite2",
    title: context.tr.satellite,
    iconPath: Assets.imagesStallite2,
    goesToBookingPage: true,
  ),
  TechnicalServiceModel(
    id: "cleaning",
    title: context.tr.categories_cleaning,
    iconPath: Assets.imagesCleaning,
    goesToBookingPage: true,
  ),
];
