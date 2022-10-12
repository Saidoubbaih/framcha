class UsersModel {
  String? reference;
  String? nom;
  String? prenom;
  String? tel1;
  String? tel2;
  String? contrat;
  DateTime? dateinscription;
  List<String>? villes;
  String? password;
  String? role;
  String? avatar;

  UsersModel(
      {this.reference,
      this.nom,
      this.prenom,
      this.tel1,
      this.tel2,
      this.contrat,
      this.dateinscription,
      this.villes,
      this.password,
      this.role,
      this.avatar});

  UsersModel.fromJson(Map<String, dynamic> json) {
    reference = json['reference'];
    nom = json['nom'];
    prenom = json['prenom'];
    tel1 = json['tel1'];
    tel2 = json['tel2'];
    contrat = json['contrat'];
    dateinscription = json['dateinscription'];
    villes = json['villes'];
    password = json['password'];
    role = json['role'];
    avatar = json['avatar'];
  }

  static List<UsersModel> usersFromSnapshot(List usersSnaphot) {
    // print("data ${usersSnaphot[0]}");
    return usersSnaphot.map((data) {
      return UsersModel.fromJson(data);
    }).toList();
  }
}
