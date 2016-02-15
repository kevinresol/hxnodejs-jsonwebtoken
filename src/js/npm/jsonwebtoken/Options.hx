package js.npm.jsonwebtoken;

import haxe.extern.EitherType;

typedef SignOptions = 
{
	?algorithm:String,
	?expiresIn:EitherType<String, Int>,
	?audience:String,
	?subject:String,
	?issuer:String,
	?noTimestamp:String,
	?headers:String,
}

typedef VerifyOptions = 
{
	?algorithms:Array<String>,
	?ignoreExpiration:Bool,
	?audience:EitherType<String, Array<String>>,
	?issuer:String,
}

typedef DecodeOptions = 
{
	?json:Bool,
	?complete:Bool,
}