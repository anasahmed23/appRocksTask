import 'package:approcks_task/localization/demo_localization.dart';
import 'package:flutter/material.dart';

String getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context).getTranslatedValue(key);
}
