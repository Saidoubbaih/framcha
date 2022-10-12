abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "ar": ar,
    "fr": fr
  };
}

final Map<String, String> ar = {
  'paiement': 'دفع',
  'command': 'توصيل',
  'today': 'اليوم',
  'since3/15days': 'لمدة 3/15 يومًا',
  'total_delivery': 'إجمالي تسليم',
  'total_paid': 'إجمالي تسليم + المدفوعة',
  'total_no_paid': 'إجمالي تسليم + غير مدفوع',
  'total_benefice': 'إجمالي صافي الربح',
  'assigned': 'مُكَلَّف',
  'delivery': 'تم التوصيل',
  'progress': 'الجاري',
  'postponed': 'مؤجل',
  'no_reply': 'لا رد',
  'unreachable': 'يتعذر الوصول إليها',
  'canceled': 'ألغيت',
  'refused': 'رفض',
  'out_of_area': 'خارج المنطقة',
  'returned': 'يعود',

  'pickup': 'يلتقط',
  'reception': 'استقبال',
  'reference': 'المرجع',
  'seller': 'تاجر',
  'client': 'زَبُون',
  'phone': 'هاتف',
  'city': 'مدينة',
  'adresse': 'العنوان',
  'montant': 'سعر',
  'status': 'الحالة',
  'created_at': 'تاريخ',
  'mylivreurs': 'رجال التوصيل الخاص بي',
  'livreur': ': رجل تسليم',
  'paiements': 'المدفوعات',

  //widgets

  'show': 'شاهد',
  'changestat': "تغيير الوضع",

  'scan': 'مسح',
  'manuel': 'كتيب',

  //appbar

  'ramassage': 'تجميع',
};

final Map<String, String> fr = {
  'paiement': "paiement",
  'command': "commande",

  'today': 'Aujourd’huit',
  'since3/15days': 'Depuis 3/15 jours',
  'total_delivery': 'Totale Livré',
  'total_paid': 'totale livré +versé',
  'total_no_paid': 'totale livré +non versé',
  'total_benefice': 'Totale bénéfice Net',

  'assigned': 'Assigné',
  'delivery': 'Livré',
  'progress': 'En cours',
  'postponed': 'Reporter',
  'no_reply': 'PDR',
  'unreachable': 'Inaccessible',
  'canceled': 'annulé',
  'refused': 'Refus',
  'out_of_area': 'HorsZone',
  'returned': 'Retourné',
  'pickup': 'Récupérer',
  'reception': 'Réception',

  'reference': 'référence',
  'seller': 'Vendeur',
  'client': 'Client',
  'phone': 'Tel',
  'city': 'Ville',
  'adresse': 'Address',
  'montant': 'Prix',
  'status': 'Etat',
  'created_at': 'date',

  'mylivreurs': 'Mes Livreurs',
  'paiements': 'Paiements',
  'livreur': 'Livreur :',

  //widgets

  'show': 'Voir',
  'changestat': "Changer l'état",
  'scan': 'Scan',
  'manuel': 'Manuel',

  //apbar
  'ramassage': 'Ramassage',
 
};
