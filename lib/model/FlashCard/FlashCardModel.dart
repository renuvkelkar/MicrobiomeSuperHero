class FlashModel{
  String? cat_id;
  String? cat_name;
  String? calories;
  String? color;
  String? f_desc;
  String? f_img_back;
  String? f_img_front;
  String? f_name;
  String? fibre_count;
   List? health_benefits;
   List?  intresting_facts;
  String? protein_count;
  String? taste;
   List?  vitamins;
   String? vitamin;
  String? fats;
  String? footer_img;

  FlashModel({this.cat_name,this.cat_id,this.color,this.calories,this.f_desc,this.f_img_back,this.f_img_front,this.f_name,this.fibre_count,this.health_benefits,
  this.intresting_facts,this.protein_count,this.taste,this.vitamins,this.vitamin,this.fats,this.footer_img});

  FlashModel.fromJson(Map<String, dynamic> json) {
    cat_id = json['cat_id'];
    cat_name = json['cat_name'];
    calories = json['calories'];
    color = json['color'];
    f_desc = json['f_desc'];
    f_img_back = json['f_img_back'];
    f_img_front = json['f_img_front'];
    f_name = json['f_name'];
    fibre_count = json['fibre_count'];
    health_benefits = json['health_benefits'];
    intresting_facts = json['intresting_facts'];
    protein_count = json['protein_count'];
    taste = json['taste'];
    vitamins = json['vitamins'];
    vitamin = json['vitamin'];
    fats = json['fats'];
    footer_img = json['footer_img'];


  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> Data = new Map<String, dynamic>();
    Data['cat_id'] = this.cat_id;
    Data['cat_name'] = this.cat_name;
    Data['calories'] = this.calories;
    Data['color'] = this.color;
    Data['f_desc'] = this.f_desc;
    Data['f_img_back'] = this.f_img_back;
    Data['f_img_front'] = this.f_img_front;
    Data['f_name'] = this.f_name;
    Data['fibre_count'] = this.fibre_count;
    Data['health_benefits'] = this.health_benefits;
    Data['intresting_facts'] = this.intresting_facts;
    Data['protein_count'] = this.protein_count;
    Data['taste'] = this.taste;
    Data['vitamins'] = this.vitamins;
    Data['vitamin'] = this.vitamin;
    Data['fats'] = this.fats;
    Data['footer_img'] = this.footer_img;

    return Data;
  }
}