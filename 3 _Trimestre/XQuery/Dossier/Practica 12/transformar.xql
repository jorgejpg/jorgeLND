xquery version "1.0";
declare default element namespace "http://misitio.com";
declare copy-namespaces no-preserve, o-inherit ;
<html>
	<head>
		<title>Practica12</title>
	</head>
	<body>
		<b>Cursos en los que todos los alumnos  asisten a "Lenguajes de Marcas":</b>
		<table style="border: 1px solid black;">
			<tr>
				<th>Curso</th>
			</tr>
			{
				for $curso in //curso
				where every $alumno in $curso satisfies ($curso//asignatura = 'Lenguajes de marcas')
				return
					<tr>
						<td>{string($curso/@nombre)}</td>
					</tr>
			}		
		</table>
	</body>
</html>
