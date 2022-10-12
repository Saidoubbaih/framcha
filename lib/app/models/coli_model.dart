class ColiModel {
  int? id;
  String? reference;
  String? seller;
  String? client;
  String? phone;
  String? city;
  String? adresse;
  String? montant;
  String? status;
  String? created_at;



  ColiModel(this.id,this.reference,this.seller,this.client,this.phone, this.city,this.adresse,this.montant,this.status,this.created_at 
      );

  ColiModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reference = json['reference'];
    seller = json['seller'];
    client = json['client'];
    phone = json['phone'];
    city = json['city'];
    adresse = json['address'];
    montant = json['montant'].toString();
    status = json['status'];
    created_at = json['created_at'];
  }




        
}
