import '../util/Images.dart';
/*
* store app settings
*/
import 'package:flutter_mvc/app/models/Language.dart';

Map<String,dynamic> env = {
  'app_name': 'Erp Tec',
  'app_title': 'Erp Tec',
  'app_env': 'production',
  'author': 'Mostafa Zayed',
  'email': 'mostafa.zayed9990@gmail.com',
  'description': 'this is education system for education and teachers from Erp Tec System Company',
  'version': '1.0',
  'module': 'education',
  'copyright_text': "@ Erp Tec " + DateTime.now().year.toString(),
  'purchase_ode': '',
  'default_language': 'en',
  'mobile_app_code': 'en',
  'app_language_rtl': false,
  'https_enabled': true,
  'domain': 'erptec.net/erp/',
  'api_prefix': 'api',
  'api_version': '1',
  'languages': [
    Language(imageUrl:Images.UNITED_KINGDOM, name: 'English', countryCode: 'en', code: 'en'),
    Language(imageUrl:Images.SAUDI, name: 'Arabic', countryCode: 'ar', code: 'ar'),
  ]
};