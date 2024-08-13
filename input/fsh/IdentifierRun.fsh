Profile: IdentifierRut
Parent: Identifier
Id: cl-identifier-rut
Title: "Identifier RUT o RUN"
Description: "Identifier para el uso de un RUT o RUN en Chile"

* obeys cl-ident-1
* extension contains DigitoVerificador named DigitoVerificador 1..1 MS
* extension[DigitoVerificador] ^short = "Debe permitir valor numérico, incluido el cero y letra K mayúsculas o minúscula"
//* extension[DigitoVerificador].valueString obeys cl-dv-1
//* type = CSTiposDocumentosDEIS#1 "RUN"
* use 0..1 MS
* type 0..1 MS
* system 0..1 MS
* value 1..1 MS
* value ^short = "Debe permitir valores en formato numérico, enteros, con valores máximos 99999999"

Extension: DigitoVerificador
Id: DigitoVerificador
Title: "Extension para Digito Verificador"
Description: "Extension para Digito Verificador del Run o Rut"
Context: Identifier

* obeys cl-dv-1
* value[x] only string 
* valueString 1..1 MS
* valueString ^short = "Debe permitir un unico valor numérico, incluido el cero y letra K mayúsculas o minúscula"

Invariant:   cl-ident-1
Description: "Debe permitir valores en formato numérico, enteros, con valores máximos 99999999"
Severity:    #error
Expression:  "value.matches('[0-9]+') and value.toInteger() < 99999999"

Invariant:   cl-dv-1
Description: "Debe permitir un unico valor valor numérico, incluido el cero y letra K mayúsculas o minúscula"
Severity:    #error
Expression:  "value.ofType(string).matches('[0-9kK]+') and value.ofType(string).length() = 1"