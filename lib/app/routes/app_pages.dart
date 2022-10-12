import 'package:delivery_food/app/modules/livrer/colislivrure/bindings/colislivrure_binding.dart';
import 'package:get/get.dart';

import 'package:delivery_food/app/modules/Admin/home/bindings/home_binding.dart';
import 'package:delivery_food/app/modules/Admin/home/views/home_admin_view.dart';
import 'package:delivery_food/app/modules/livrer/distributionlivrure/bindings/distributionlivrure_binding.dart';
import 'package:delivery_food/app/modules/login/bindings/login_binding.dart';
import 'package:delivery_food/app/modules/login/views/login_view.dart';
import 'package:delivery_food/app/modules/paiment/bindings/paiment_binding.dart';
import 'package:delivery_food/app/modules/paiment/views/paiment_view.dart';
import 'package:delivery_food/app/modules/profile/bindings/profile_binding.dart';
import 'package:delivery_food/app/modules/profile/views/profile_view.dart';
import 'package:delivery_food/app/modules/responsable/bindings/responsable_binding.dart';
import 'package:delivery_food/app/modules/responsable/views/responsable_view.dart';

import '../modules/Admin/colis/bindings/colis_binding.dart';
import '../modules/Admin/colis/views/colis_view.dart';
import '../modules/Admin/distribution/bindings/distribution_binding.dart';
import '../modules/Admin/distribution/views/distribution_view.dart';
import '../modules/Admin/facturation/bindings/facturation_binding.dart';
import '../modules/Admin/facturation/views/facturation_view.dart';
import '../modules/Admin/ramassage/bindings/ramassage_binding.dart';
import '../modules/Admin/ramassage/views/ramassage_view.dart';
import '../modules/Admin/retour/bindings/retour_binding.dart';
import '../modules/Admin/retour/views/retour_view.dart';
import '../modules/Admin/root/bindings/root_binding.dart';
import '../modules/Admin/root/views/root_view.dart';
import '../modules/change_etat/bindings/change_etat_binding.dart';
import '../modules/change_etat/views/change_etat_view.dart';
import '../modules/livrer/assigne/bindings/assigne_binding.dart';
import '../modules/livrer/assigne/views/assigne_view.dart';
import '../modules/livrer/colislivrure/views/colislivrure_view.dart';
import '../modules/livrer/distributionlivrure/views/distributionlivrure_view.dart';
import '../modules/livrer/etat/bindings/etat_binding.dart';
import '../modules/livrer/etat/views/etat_view.dart';
import '../modules/livrer/home/bindings/home_binding.dart';
import '../modules/livrer/home/views/home_livrirue_view.dart';
import '../modules/livrer/rotourlivrure/bindings/rotourlivrure_binding.dart';
import '../modules/livrer/rotourlivrure/views/rotourlivrure_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOMEA,
      page: () => HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.HOMEL,
      page: () => HomeLivreureView(),
      binding: HomeLivrureBinding(),
    ),
    GetPage(
      name: _Paths.ROOT,
      page: () => RootAdminView(),
      binding: RootAdminBinding(),
    ),
    GetPage(
      name: _Paths.DISTRIBUTION,
      page: () => DistributionView(),
      binding: DistributionBinding(),
    ),
    GetPage(
      name: _Paths.ETAT,
      page: () => EtatView(),
      binding: EtatBinding(),
    ),
    GetPage(
      name: _Paths.ASSIGNE,
      page: () => AssigneView(),
      binding: AssigneBinding(),
    ),
    GetPage(
      name: _Paths.RETOUR,
      page: () => RetourView(),
      binding: RetourBinding(),
    ),
    GetPage(
      name: _Paths.COLIS,
      page: () => ColisView(),
      binding: ColisBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_ETAT,
      page: () => ChangeEtatView(),
      binding: ChangeEtatBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.RESPONSABLE,
      page: () => ResponsableView(),
      binding: ResponsableBinding(),
    ),
    GetPage(
      name: _Paths.PAIMENT,
      page: () => PaimentView(),
      binding: PaimentBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.RAMASSAGE,
      page: () => RamassageView(),
      binding: RamassageBinding(),
    ),
    GetPage(
      name: _Paths.FACTURATION,
      page: () => FacturationView(),
      binding: FacturationBinding(),
    ),
    GetPage(
      name: _Paths.DISTRIBUTIONLIVRURE,
      page: () => DistributionlivrureView(),
      binding: DistributionlivrureBinding(),
    ),
    GetPage(
      name: _Paths.ROTOURLIVRURE,
      page: () => RotourlivrureView(),
      binding: RotourlivrureBinding(),
    ),
    GetPage(
      name: _Paths.COLISLIVRURE,
      page: () => ColislivrureView(),
      binding: ColislivrureBinding(),
    ),
  ];
}
