Public class renderedExample{
  Public Boolean PBFlag{get;set;}
  Public Account[] accRec{get;set;}

Public renderedExample(){
  accRec = [select name,id,accountnumber from account Limit 1];

PBFlag= false;
  }

Public void ShowPB(){
  PBFlag= true;
  }
  }