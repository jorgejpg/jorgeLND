xquery version "1.0";
<html>
	<head>
		<title>Tarea10.2</title>
	</head>
	<body>
	
		<h2>Apartado 1</h2>
		<h3>Información de las {count(//OFICINA)} oficinas agrarias del Cabildo:</h3>
		<table>
			<tr>
				<th bgcolor="orange">OFICINA</th>
				<th bgcolor="orange">CURSOS</th>
				<th bgcolor="orange" >CHARLA</th>
				<th bgcolor="orange" >VISITA</th>
				<th bgcolor="orange">CURSILLOS</th>
			</tr>
			{
				for $of in //OFICINA
				order by $of/@sede
				return
					<tr>
						<td >{string($of/@sede)}</td>
						<td >{string(count($of/ACCION[TIPO='Cursos']))}</td>
						<td>{string(count($of/ACCION[TIPO='Charla']))}</td>
						<td>{string(count($of/ACCION[TIPO='Visita']))}</td>
						<td>{string(count($of/ACCION[TIPO='Cursillos']))}</td>
					</tr>
			}
		</table>
		<br/>
<br/>
		<h2>Apartado 2</h2>
		<h3>Cursos de más de 26 horas:</h3>
		<table>
			<tr>
				<th bgcolor="orange">Horas</th>
				<th bgcolor="orange">Nombre</th>
				<th bgcolor="orange">Oficina</th>
				<th bgcolor="orange">Lugar</th>
				<th bgcolor="orange">Municipio</th>
			</tr>
			{
				for $accion in //ACCION
				where ($accion/HORAS > 26)
				return
					<tr>
						<td>{string($accion/HORAS)}</td>
						<td>{string($accion/NOMBRE)}</td>
						<td>{string($accion/../@sede)}</td>
						<td>{string($accion/LUGAR)}</td>
						<td>{string($accion/MUNICIPIO)}</td>
					</tr>
			}
		</table>
		<br/>
<br/>
		<h2>Apartado 3</h2>
		<h3>Acciones destinadas al aguacate iniciadas en el segundo semestre</h3>
		<table>
			<tr>
				<th bgcolor="orange">Acción Nº</th>
				<th bgcolor="orange">Nombre</th>
				<th bgcolor="orange">Oficina</th>
			</tr>
			{
				for $accion at $i in //ACCION
				where (contains($accion/NOMBRE, 'aguacate'))
				return
					<tr>
						<td>{string($i)}</td>
						<td>{string($accion/NOMBRE)}</td>
						<td>{string($accion/../@sede)}</td>
					</tr>
			}
		</table>
	</body>
</html>
