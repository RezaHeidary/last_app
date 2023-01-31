import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appShop': 'Shop',
          'appAdd': 'Add',
          'appLogin': 'Login',
          'appCode': 'Code',
          'appProduct': 'Product',
          'appAddManagement': 'Add Management',
          'appBasket': 'Basket'
        },
        'fa_IR': {
          'appShop': 'فروشگاه',
          'appAdd': 'افزودن',
          'appLogin': 'ورود',
          'appCode': 'کد ارسال شده',
          'appProduct': 'محصولات',
          'appAddManagement': 'مدیریت محصولات',
          'appBasket': 'سبد خرید'
        }
      };
}
