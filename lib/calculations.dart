import 'dart:math';
class Calculations
{
  int hight;
  int weght;
  // ignore: non_constant_identifier_names
  int Ag;
  double _bmi;
  // ignore: non_constant_identifier_names
  Calculations({this.hight,this.weght,this.Ag});
  // ignore: non_constant_identifier_names
  double Ans() {
    _bmi = ((weght * 2.20462) / pow(hight, 2)) * 703;
    return _bmi;
  }
  String info()
  {
    if(_bmi>=25)
      {
        return 'overweight';
      }
    else if(_bmi>=18.5 && _bmi<25)
      {
        return 'normal';
      }
    else
      {
        return 'lightweight';
      }
  }
  String suggest()
  {
    if(_bmi>=25)
    {
      return 'You Have Body Weight More Than Normal, Eat Less and Try To Exercise More';
    }
    else if(_bmi>=18.5 && _bmi<25)
    {
      return 'You Are A Normal Body Weight, Good Job!';
    }
    else
    {
      return 'You have Body Weight Less Than Normal, Try To Eat More!';
    }
  }
  double givebmi()
  {
    return _bmi;
  }
}