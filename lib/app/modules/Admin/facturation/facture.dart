class UsersModel {
  String? bl;
  String? livreur;
  String? datedecreation;
  String? datedereglement;
  String? datedeversement;
  int? montant;
  int? assigne;
  int? livre;
  String? nonlivre;

  UsersModel({
    this.bl,
    this.livreur,
    this.datedecreation,
    this.datedereglement,
    this.datedeversement,
    this.montant,
    this.assigne,
    this.livre,
    this.nonlivre,
  });

  UsersModel.fromJson(Map<String, dynamic> json) {
    bl = json['bl'];
    livreur = json['livreur'];
    datedecreation = json['datedecreation'];
    datedereglement = json['datedereglement'];
    datedeversement = json['datedeversement'];
    montant = json['montant'];
    assigne = json['assigne'];
    livre = json['livre'];
    nonlivre = json['nonlivre'];
  }

  static List<UsersModel> usersFromSnapshot(List usersSnaphot) {
    // print("data ${usersSnaphot[0]}");
    return usersSnaphot.map((data) {
      return UsersModel.fromJson(data);
    }).toList();
  }
}
