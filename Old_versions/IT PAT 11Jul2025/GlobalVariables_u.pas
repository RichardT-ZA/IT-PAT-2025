//Richard Thiart
unit GlobalVariables_u;

interface
     //This is where variables that can be used across all forms are declared.   Declaring these in Login_u results in a circular form reference
var sUsername: String;
    sUserType: String;
    bPremium : Boolean;
    bUnlocked : Boolean;

const AdminPassword = 'Mr Wheeler is goated';

const PlusCost =     0.01 ;
      MinusCost =    0.01 ;
      MultiplyCost = 0.05 ;
      DevideCost =   0.05 ;
      ExponentCost = 0.10 ;
      LogCost =      0.10 ;
      DivCost =      0.07 ;
      ModCost =      0.07 ;
      SinCost =      0.02 ;
      CosCost =      0.02 ;
      TanCost =      0.02 ;
      ConvertCost =  0.12 ;

implementation



end.
