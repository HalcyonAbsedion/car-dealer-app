import '../models/car_model.dart';

class PostViewModel {
  PostModel? postModel;
  PostViewModel({this.postModel});

  get name => postModel?.name;
  get imageUrl => postModel?.imageUrl;
  get price => postModel?.price;
  get description => postModel?.description;
  
}
