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
				<th>Nació en</th>
			</tr>
			{
				for $alumno in //alumno
				return 
				if (count($alumno/notas/nota[../nota >= 5])) then (
					<tr>
						<td>
							{string($alumno/nombre)}
						</td>
						<td>
							19{substring($alumno/@cial, 2, 2)}
						</td>
					</tr>
				) else (
					
				)
			}
		</table>
	</body>
</html>
