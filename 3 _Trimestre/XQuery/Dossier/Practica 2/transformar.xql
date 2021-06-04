xquery version "1.0";
declare default element namespace "http://misitio.com";
declare copy-namespaces no-preserve, no-inherit ;

<alumnos>
	{
	for $alumno in //alumno
	where (count($alumno/notas/asignatura)) <4
	return $alumno
	}
</alumnos>
