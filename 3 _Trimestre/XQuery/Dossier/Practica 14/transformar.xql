xquery version "1.0";
declare default element namespace "http://misitio.com";
declare copy-namespaces no-preserve, no-inherit ;
<html>
	<head>
		<title>Practica14</title>
	</head>
	
	<body>
		<h2>Alumnos con ninguna materia aprobada:</h2>
		<table style="border: 1px solid black;">
			<tr>
				<th>Alumno</th>
				<th>Apellido</th>
				<th>Numero de materias</th>
			</tr>
			{
				for $alumno in //alumno
				where not(every $nota in $alumno//nota satisfies ($nota >= 5))
				return
					<tr>
						<td>{string($alumno/nombre)}</td>
						<td>{string($alumno/apellidos)}</td>
						<td>{string(count($alumno//nota))}</td>
					</tr>
				
			}		
		</table>
	</body>
</html>
