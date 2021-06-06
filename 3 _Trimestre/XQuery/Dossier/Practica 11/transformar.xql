  
xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Practica11</title>
	</head>
	
	<body>
		<b>Cursos en los que se imparte "Practicas en empresa"</b>
		<table style="border: 1px solid black;">
			<tr>
				<th>Curso</th>
			</tr>
			{
				for $curso in //curso
				where some $alumno in $curso satisfies ($curso//asignatura = 'Prácticas de empresa')
				return
					<tr>
						<td>{string($curso/@nombre)}</td>
					</tr>
			}		
		</table>
	</body>
</html>
