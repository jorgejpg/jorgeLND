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
				let $fechas := distinct-values(//comentario/@fecha)
				for $fecha in $fechas
				return
					<tr>
						<td>{string($fecha)}</td>
						<td>{string(count(//comentario[@fecha = $fecha]))}</td>
					</tr>
			}		
		</table>
	</body>
</html>
