Sub Main
	Call IndexDatabase()	'Ejemplo-Detalle de ventas.IMD
End Sub


' Datos: Indexar base de datos
Function IndexDatabase
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.Index
	task.AddKey "FECHA_FACT", "A"
	task.DeleteIndex
	Set task = Nothing
	Set db = Nothing
End Function