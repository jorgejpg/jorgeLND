  
xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Practica9</title>
	</head>
	
	<body>
		<b>Nota media alumnos 1o de ASIR</b>

		<br/>
		<table style="border: 1px solid black;">
			<tr>
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>Nota media</th>
			</tr>
			{
				for $curso in //curso
				return
					if ($curso/@nombre = '1º ASIR') then (
						for $alumno in $curso/alumno
						let $notas := $alumno/notas/nota
						return
						<tr>
							<td>{string($alumno/nombre)}</td>
							<td>{string($alumno/apellidos)}</td>
							<td>{string(avg($notas))}</td>
						</tr>
					) else ()
			}		
		</table>
	</body>
</html>
