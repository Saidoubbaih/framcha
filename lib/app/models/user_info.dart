class UserModel {
  UserModel(
      {this.reference,
      this.firstname,
      this.lastname,
      this.email,
      this.phone1,
      this.phone2,
      this.avatar,
      this.contrat,
      this.created_at,
      this.role,
      this.zones});

  String? reference;
  String? firstname;
  String? lastname;
  String? email;
  String? phone1;
  String? phone2;
  String? avatar;
  String? contrat;
  String? created_at;
  String? role;
  List<String>? zones;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      reference: json['reference'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      phone1: json['phone1'],
      phone2: json['phone2'],
      avatar: json['avatar'],
      contrat: json['contrat'],
      created_at: json['created_at'],
      role: json['role'],
      zones: json['zones']);
}
/*
 [
            'id' => $this->id,
            'reference'  => $this->reference,
            'firstname'  => $this->firstname,
            'lastname'   => $this->lastname,
            'email'      => $this->email,
            'phone1'     => $this->phone1,
            'phone2'     => $this->phone2,
            'avatar'     => $this->avatar,
            'contrat'    => 1,
            'created_at' => $this->created_at,
            'roles' => array_map(
                function ($role) {
                    return $role['name'];
                },
                $this->roles->toArray()
            ),
            // 'permissions' => array_map(
            //     function ($permission) {
            //         return $permission['name'];
            //     },
            //     $this->getAllPermissions()->toArray()
            // ),
            'zones'      => ZoneResource::collection($this->delivery->deliveriesTarif),
        ];
        */
