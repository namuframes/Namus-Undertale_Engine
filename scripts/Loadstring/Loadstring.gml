/// Loading a string from a buffer
function LoadString (_filename) {
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);

	buffer_delete(_buffer);
	return _string;
}