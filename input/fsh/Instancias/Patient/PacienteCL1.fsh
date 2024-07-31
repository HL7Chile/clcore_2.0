
Instance : PacienteCL
Title : "Ejemplo de Recurso Paciente Nacional"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es Real"
InstanceOf : CorePacienteCl
Usage : #example

* extension[IdentidadDeGenero] = IdentidadDeGeneroPacienteCl
* extension[SexoBiologico] = SexoBiologicoPacienteCl
//Identificación por Cédula Chilena
* identifier.use = #official    //obligado
* identifier.type.extension[paisEmisionDocumento] = PaisEmisionDocumentoPacienteCL
* identifier.type.coding = CSCodigoDNI#NNCHL "Chile"

* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "15.236.327-k"

* identifier[RUN] = RUN

//registro de paciente activo
* active = true

//Nombre Oficial
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Rosales"
* name[NombreOficial].family.extension[segundoApellido] = SegundoApellidoPacienteCL
* name[NombreOficial].given[0] = "Marietta"
* name[NombreOficial].given[+] = "María"
* name[NombreOficial].given[+] = "Ximena"

//nombre social
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Xime"

//dos contactos, un celular y un email
* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "943561833"

* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "mariRosal@mimail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #female
* birthDate = "1983-03-24"

// Una sola dirección

* address = AddressPacienteCL

* contact.extension[IdContacto] = IdentificacionContactoPacienteCL
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension[segundoApellido] = SegundoApellidoContactoPacienteCL
* contact.name.given[0] = "Juana"
* contact.name.given[+] = "Josefa"

* communication.language.coding = CSCodigoslenguaje#es-CL "Spanish"

* generalPractitioner = Reference(OrganizacionClEjemplo1)

Instance: PaisEmisionDocumentoPacienteCL
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSPaises#152 "Chile"

Instance: SegundoApellidoPacienteCL
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Bosh"

Instance: AddressPacienteCL
InstanceOf: ClAddress
Usage: #inline

* use = #home
* line[0] = "Av Los Chirimoyos, 32, casa 4"
* city.extension = ComunasClPacienteCL
* district.extension = ProvinciasClPacienteCL
* state.extension = RegionesClPacienteCL
* country.extension = CodigoPaisesPacienteCL

Instance: ComunasClPacienteCL
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSComunas#5602 "Algarrobo"

Instance: ProvinciasClPacienteCL
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSProvincia#056 "SAN ANTONIO"

Instance: RegionesClPacienteCL
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSRegion#5 "Valparaíso"

Instance: CodigoPaisesPacienteCL
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSPaises#152 "Chile"

Instance: IdentificacionContactoPacienteCL
InstanceOf: IdentificacionContactoCl
Usage: #inline

* extension[tutId].valueIdentifier
  * type = CSCodigoDNI#NNCHL "Chile"
  * system = "http://regcivil.cl/Validacion/RUN"
  * value = "8987321-7"

* extension[docProc].valueCodeableConcept = CSPaises#152 "Chile"

Instance: SegundoApellidoContactoPacienteCL
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Morales"

Instance: IdentidadDeGeneroPacienteCl
InstanceOf: IdentidadDeGenero
Usage: #inline

* valueCodeableConcept = CSIdentidadGenero#1 "Masculino" 


Instance: SexoBiologicoPacienteCl
InstanceOf: SexoBiologico
Usage: #inline

* valueCodeableConcept = CSadministrative-gender#male "Male"

Instance: RUN
InstanceOf: IdentifierRut
Usage: #inline
* extension[DigitoVerificador] = DV
* type = CSTiposDocumentosDEIS#1 "RUN"
* value = "15236327"

Instance: DV
InstanceOf: DigitoVerificador
Usage: #inline

* valueString = "K"
