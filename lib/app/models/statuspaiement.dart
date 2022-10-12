class StatuPaiement {
  StatuPaiement(
      {this.total_delivery,
      this.total_paid,
      this.total_no_paid,
      this.total_benefice});

  String? total_delivery;
  String? total_paid;
  String? total_no_paid;
  String? total_benefice;

  factory StatuPaiement.fromJson(List<dynamic> json) => StatuPaiement(
      total_delivery: json[0].toString(),
      total_paid: json[1].toString(),
      total_no_paid: json[2].toString(),
      total_benefice: json[3].toString());

       factory StatuPaiement.fromJsonlist(List json) => StatuPaiement(
      total_delivery: json[0].toString(),
      total_paid: json[1].toString(),
      total_no_paid: json[2].toString(),
      total_benefice: json[3].toString());


}

/*
[
            $total_delivery,
            $total_paid,
            $total_no_paid,
            $total_benefice
        ];
        */
