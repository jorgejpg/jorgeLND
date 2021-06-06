xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Practica 10</title>
	</head>
	
	<body>
		<table style="border: 1px solid black;">
			<tr>
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>Asignatura</th>
			</tr>
			{
				for $alumno in //alumno
				return
					for $asignatura in $alumno/notas/asignatura
					return
					if (ends-with($asignatura, 's')) then (
						<tr>
							<td>{string($alumno/nombre)}</td>
							<td>{string($alumno/apellidos)}</td>
							<td>{string($asignatura)}</td>
						</tr>
					) else ()
			}		
		</table>
	</body>
</html>
