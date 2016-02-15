package js.npm;

import js.Error;
import js.npm.jsonwebtoken.Options;
import js.node.Buffer;

import haxe.extern.EitherType;


@:jsRequire("jsonwebtoken")
extern class JsonWebToken 
{
	public static function sign<T>(payload:T, secret:EitherType<String,Buffer>, options:SignOptions, ?callback:String->Void):String;
	
	public static function verify<T>(token:String, secret:EitherType<String,Buffer>, ?options:VerifyOptions, ?callback:Error->T->Void):T;
	
	public static function decode<T>(token:String, ?options:DecodeOptions):T;
}

