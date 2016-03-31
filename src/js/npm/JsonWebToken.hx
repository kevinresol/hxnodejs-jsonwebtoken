package js.npm;

import js.node.Buffer;
import js.support.Callback;

import haxe.extern.EitherType;


extern class JsonWebToken implements npm.Package.Require<"jsonwebtoken","^5.0.0">
{
	public static function sign<T>(payload:T, secret:EitherType<String,Buffer>, options:SignOptions, ?callback:String->Void):String;
	
	public static function verify<T>(token:String, secret:EitherType<String,Buffer>, ?options:VerifyOptions, ?callback:Callback<T>):T;
	
	public static function decode<T>(token:String, ?options:DecodeOptions):T;
}

private typedef SignOptions = 
{
	?algorithm:String,
	?expiresIn:EitherType<String, Int>,
	?audience:String,
	?subject:String,
	?issuer:String,
	?noTimestamp:String,
	?headers:String,
}

private typedef VerifyOptions = 
{
	?algorithms:Array<String>,
	?ignoreExpiration:Bool,
	?audience:EitherType<String, Array<String>>,
	?issuer:String,
}

private typedef DecodeOptions = 
{
	?json:Bool,
	?complete:Bool,
}
