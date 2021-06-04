xquery version "1.0";
declare default element namespace "http://misitio.com";
declare copy-namespaces no-preserve, no-inherit ;

<repetidores>
	{
	for $variable in /instituto/curso/alumno
	where $variable/repetidor = "true"
	order by $variable/apellidos
	return $variable/apellidos
	}
</repetidores>
