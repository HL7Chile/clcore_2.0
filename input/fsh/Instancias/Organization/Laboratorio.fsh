Instance : EjemploLaboratorio1
Title : "Ejemplo Organización Laboratorio"
Description: "Laboratorio"
InstanceOf : CoreOrganizacionCl
Usage : #example


* active = true
* identifier
  * system = "https://sii.cl"
  * value = "785943520-7"

* name = "Laboratorio ACME de Chile"	
	
* address = AddressOrganization2
	
Instance: AddressOrganization2
InstanceOf: ClAddress
Usage: #inline

* line[0] = "Irrarazaval 1234"
* city = "ÑuÑoa"
* city.extension = ComunasClOrganization2
* district = "Santiago"
* district.extension = ProvinciasClOrganization2
* state = "Metropolitana de Santiago"
* state.extension = RegionesClOrganization2
* country = "Chile"
* country.extension = CodigoPaisesOrganization2

Instance: ComunasClOrganization2
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSComunas#13120 "ÑuÑoa"

Instance: ProvinciasClOrganization2
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSProvincia#131 "SANTIAGO"

Instance: RegionesClOrganization2
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSRegion#13 "Metropolitana de Santiago"

Instance: CodigoPaisesOrganization2
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSPaises#152 "Chile"