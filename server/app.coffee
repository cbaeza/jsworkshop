express 		= require("express")
bodyParser 		= require('body-parser')
methodOverride 	= require('method-override')
multer 			= require('multer')
fs 				= require('fs')
path 			= require('path')
logger 			= require('morgan')
errorHandler 	= require('errorhandler')

app = express()
app.set 	'port', 3030
app.set 	'view engine', 'jade'
app.set 	'views', "./server/views"
app.use 	methodOverride()
app.use 	bodyParser.json()

app.use 	express.static( "./public" )

app.use 	logger('dev')
app.use 	errorHandler()

app.listen app.get('port'), ->
	console.log "Listening on port #{app.get('port')}..."
