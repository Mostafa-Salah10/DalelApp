// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/localization_helper.dart';
class OnboardingModel {
  final String url;
  final String title;
  final String descraption;
  OnboardingModel({
    required this.url,
    required this.title,
    required this.descraption,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
      url: Assets.assetsImagesOnBoaridng1,
      title: LocalizationHelper.appStrings.tileOnboarding1,
      descraption: LocalizationHelper.appStrings.descraptionOnboarding1),
  OnboardingModel(
      url: Assets.assetsImagesOnBoaridng2,
      title: LocalizationHelper.appStrings.tileOnboarding2,
      descraption: LocalizationHelper.appStrings.descraptionOnboarding2),
  OnboardingModel(
      url: Assets.assetsImagesOnBoaridng3,
      title: LocalizationHelper.appStrings.tileOnboarding3,
      descraption: LocalizationHelper.appStrings.descraptionOnboarding3),
];
