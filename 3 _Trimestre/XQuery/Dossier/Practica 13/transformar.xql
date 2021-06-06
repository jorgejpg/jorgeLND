xquery version "1.0";
declare default element namespace "http://misitio.com";
declare copy-namespaces no-preserve, no-inherit ;
<html>
	<head>
		<title>Practica13</title>
	</head>
	
	<body>
		<h2>Alumnos con todo aprobado:</h2>
		<table style="border: 1px solid black;">
			<tr>
				<th>Alumno</th>
				<th>Apellido</th>
			</tr>
			{
				for $alumno in //alumno
				where every $nota in $alumno//nota satisfies ($nota >= 5)
				return
					<tr>
						<td>{string($alumno/nombre)}</td>
						<td>{string($alumno/apellidos)}</td>
					</tr>				
			}		
		</table>
	</body>
</html>
