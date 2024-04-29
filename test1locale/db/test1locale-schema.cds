using {
  sap.common.CodeList,
} from '@sap/cds/common';
namespace my.testlocale;

entity Material{
  key ID: String;
  name: localized String  @title : '{i18n>MaterialName}';  
  plant:String;  
}
entity Flutes : CodeList{
  key code         : String(2) @(title: '{i18n>Flute}');      
}