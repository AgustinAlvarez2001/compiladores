grammar compiladores;

@header {
package compiladores;
}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

WS : [ \n\r\t]+ -> skip ;
NUMERO : DIGITO+ ;
OTRO : . ;
ID : (LETRA | '_')(LETRA | DIGITO | '_')+ ;

s : ID     { System.out.println("\nID ->" + $ID.getText() + "<--"); }          s
  | NUMERO { System.out.println("\nNUMERO ->" + $NUMERO.getText() + "<--"); }  s
  | OTRO   { System.out.println("\nOtro ->" + $OTRO.getText() + "<--"); }      s
  | EOF
  ;
