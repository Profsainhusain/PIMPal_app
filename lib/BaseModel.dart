import 'package:scoped_model/scoped_model.dart';

class BaseModel extends Model{
  int stackIndex = 0;
  List entityList = [];
  var entityBeingEdited;
  String chosenDate;

  //method to set date chosen from dateTimePicker popup
  void setChosenDate(String inDate){
    chosenDate = inDate;
    notifyListeners();
  }

  //method that will be called when an entity is added or remove from entityList
  void loadData(String inEntityType, dynamic inDataBase) async{
    entityList = await inDataBase.getAll();
    notifyListeners();
  }

  // method that will be called to navigate btw list and entry screen
  void setStackIndex(int inStackIndex){
    stackIndex = inStackIndex;
    notifyListeners();
  }
}