type storage = string

type action =
	| HelloWorld
	| Personalized of string

let hello_someone ( arg : string ) : string =
	String.concat "Hello " arg

let hello_world ( _ : unit ) : string =
	hello_someone "World"

let main ( action, _ : action * storage ) : operation list * storage =
	let storage = match action with
	| HelloWorld -> hello_world unit
	| Personalized arg -> ( hello_someone arg ) in
	( [] : operation list ), storage
