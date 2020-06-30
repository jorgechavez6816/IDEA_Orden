Sub Main
	Call SortDatabase()	'Ejemplo-Detalle de ventas.IMD
End Sub


' Datos: Ordenar
Function SortDatabase
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.Sort
	task.AddKey "COD_PROD", "A"
	task.AddKey "NUM_CLI", "A"
	task.AddKey "TOTAL", "D"
	dbName = "Detalle_01.IMD"
	task.PerformTask dbName
	Set task = Nothing
	Set db = Nothing
	Client.OpenDatabase (dbName)
End Function