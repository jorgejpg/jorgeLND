  
xquery version "1.0";

declare default element namespace "http://misitio.com";

declare copy-namespaces no-preserve, no-inherit ;


<html>
	<head>
		<title>Lista</title>
	</head>
	
	<body>
		Hay {count(//alumno)} alumnos
		
		<ul>
			{
				for $alumno in //alumno
				return <li> {string($alumno/nombre)} del curso {string($alumno/../@nombre)}</li>
			}
		</ul>
	</body>
</html>
