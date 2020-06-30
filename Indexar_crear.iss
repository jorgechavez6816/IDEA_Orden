Sub Main
	Call IndexDatabase()	'Ejemplo-Detalle de ventas.IMD
End Sub


' Datos: Indexar base de datos
Function IndexDatabase
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.Index
	task.AddKey "COD_PROD", "A"
	task.AddKey "NUM_CLI", "A"
	task.Index FALSE
	Set task = Nothing
	Set db = Nothing
End Function