xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Lista</title>
	</head>
	
	<body>
		<b>Hay {count(//alumno)} alumnos
</b>
		
<br/>
		<table style="border: 1px solid black;">
			<tr>
				<th>Alumno</th>
				<th>Materias aprobadas</th>
			</tr>
			{
				for $alumno in //alumno
				return 
				<tr>
					<td>
						{string($alumno/nombre)}
					</td>
					<td>
						{count($alumno/notas/nota[../nota >= 5])} materias
					</td>
				</tr>
			}
		</table>
	</body>
</html>
