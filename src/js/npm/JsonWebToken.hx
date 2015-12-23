package js.npm;

import js.Error;
import js.npm.jsonwebtoken.Options;

@:jsRequire("jsonwebtoken")
extern class JsonWebToken 
{
	public static function sign<T>(payload:T, secret:String, options:SignOptions, ?callback:String->Void):String;
	
	public static function verify<T>(token:String, secret:String, ?options:VerifyOptions, ?callback:Error->T->Void):T;
	
	public static function decode<T>(token:String, ?options:DecodeOptions):T;
}

