class StatsOrders {
  String? assigned;
  String? delivery;
  String? progress;
  String? postponed;
  String? no_reply;
  String? unreachable;
  String? canceled;
  String? refused;
  String? out_of_area;
  String? returned;
  String? pickup;
  String? reception;

  StatsOrders(
      {this.assigned,
      this.delivery,
      this.progress,
      this.postponed,
      this.no_reply,
      this.unreachable,
      this.canceled,
      this.refused,
      this.out_of_area,
      this.returned,
      this.pickup,
      this.reception});

  factory StatsOrders.fromJson(Map<String, dynamic> json) => StatsOrders(
        assigned: json['total_delivery'],
        delivery: json['total_no_paid'],
        progress: json['total_no_paid'],
        postponed: json['total_no_paid'],
        no_reply: json['total_benefice'],
        unreachable: json['total_benefice'],
        canceled: json['total_canceled'],
        refused: json['total_refused'],
        out_of_area: json['total_paid'],
        returned: json['returned'],
        pickup: json['total_pickup'],
        reception: json['total_reception'],
      );

       factory StatsOrders.fromJsonlist(List json) => StatsOrders(
      assigned: json[0].toString(),
      delivery: json[1].toString(),
      progress: json[2].toString(),
      postponed: json[3].toString(),
      no_reply: json[4].toString(),
      unreachable: json[5].toString(),
      canceled: json[6].toString(),
      refused: json[7].toString(),
      out_of_area: json[8].toString(),
      returned: json[9].toString(),
      pickup: json[10].toString(),
      reception: json[11].toString()
      
      
      );
}
