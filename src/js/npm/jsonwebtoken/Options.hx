package js.npm.jsonwebtoken;

typedef SignOptions = 
{
	?algorithm:String,
	?expiresIn:haxe.extern.EitherType<String, Int>,
	?audience:String,
	?subject:String,
	?issuer:String,
	?noTimestamp:String,
	?headers:String,
}

typedef VerifyOptions = 
{
	algorithms:Array<String>,
	?ignoreExpiration:Bool,
	?audience:String,
	?issuer:String,
}

typedef DecodeOptions = 
{
	?json:Bool,
	?complete:Bool,
}