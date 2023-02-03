import 'package:get/get.dart';

class WorldLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {

    'en_US': {
      'hello': 'Hello, How are you?',
      'going': 'Where are you going?',
      'email': 'Hello @name, your email is @email',
      'desk' : 'Dashboard'
    },

    'es_ES': {
      'hello': '¿Hola, cómo estás?',
      'going': '¿Adónde vas?',
      'email': 'Hola @name, tu correo electrónico es @email',
      'desk' : 'Escritorio'
    },

    'ru_RU':{
      'hello':'Привет, как дела?',
      'going':'Куда ты направляешься?',
      'email': 'Здравствуйте @name, ваш адрес электронной почты @email',
    }

    //add more language here
  };
}