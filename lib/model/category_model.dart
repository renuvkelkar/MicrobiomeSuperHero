class CatModel {
  String? cat_name;
   String? cat_id;
   String? cat_img;
   String? cat_color;

  CatModel({  this.cat_name,  this.cat_color,  this.cat_id,  this.cat_img});

  CatModel.fromJson(Map<String, dynamic> json) {
    cat_name = json['cat_name'];
    cat_id = json['cat_id'];
    cat_img = json['cat_img'];
    cat_color = json['cat_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> CatModel = new Map<String, dynamic>();
    CatModel['cat_name'] = this.cat_name;
    CatModel['cat_img'] = this.cat_img;
    CatModel['cat_color'] = this.cat_color;
    CatModel['cat_id'] = this.cat_color;
    return CatModel;
  }
}