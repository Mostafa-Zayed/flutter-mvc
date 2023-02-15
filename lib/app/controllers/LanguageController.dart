import 'package:flutter_mvc/app/models/Language.dart';
import 'package:flutter_mvc/vendor/Configration.dart';

class LanguageController{


  List<Language> getAll(){
    return Configration.getLanguages();
  }
}