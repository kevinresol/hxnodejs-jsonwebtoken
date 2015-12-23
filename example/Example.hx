package;

import js.npm.JsonWebToken;

class Example
{
	public static function main()
	{
		var token = JsonWebToken.sign({test:"payload"}, "secret", {expiresIn: '2d'});
		
		trace(token);
		
		var payload = JsonWebToken.verify(token, "secret");
		
		trace(payload.test);
	}
}