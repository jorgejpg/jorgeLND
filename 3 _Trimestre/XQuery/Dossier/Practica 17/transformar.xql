xquery version "1.0";
declare default element namespace "http://misitio.com";
declare copy-namespaces no-preserve, no-inherit ;
<html>
	<head>
		<title>Practica16</title>
	</head>
	
	<body>
		<h2>Comentarios por fecha:</h2>
		<table style="border: 1px solid black;">
			<tr>
				<th>Fecha</th>
				<th>Numero de Comentarios</th>
			</tr>
			{
				for $alumno in doc(
"alumnos_namespaces.xml")//alumno,
				$comentario in doc("comentarios.xml")//alumno[@cial = $alumno/@cial]/comentario
				order by $alumno/nombre, $comentario/@fecha
				return
					<tr>
						<td>{string($alumno/nombre)}</td>
						<td>{string($comentario/@fecha)}</td>
						<td>{string($comentario)}</td>
						
					</tr>
			}		
		</table>
	</body>
</html>
