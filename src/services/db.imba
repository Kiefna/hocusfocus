import * as edgedb from 'edgedb'
import Pool from 'edgedb'

let db\Pool

def initDatabase
	# @ts-ignore
	db = await edgedb.createClient {database:process.env.EDGEDB_DATABASE}
	return do() db.close!

export {initDatabase, db}