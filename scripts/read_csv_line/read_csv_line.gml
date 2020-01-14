/// @description
/// @param file

var l = file_text_readln(argument0);
var res = ds_list_create();
var acc = "";

for( var i = 1; i < string_length(l); i++ )
{
	var ch = string_char_at(l, i);
	
	if( ch == "," )
	{
		ds_list_add(res, acc);
		acc = "";
	}
	else
		acc += ch;
}

if( string_length(acc) != 0 )
	ds_list_add(res, acc)

return res;