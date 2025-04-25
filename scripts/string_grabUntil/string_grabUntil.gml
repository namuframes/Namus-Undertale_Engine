function string_grabUntil(_string, endChar, startPos) {
	return string_copy(_string, startPos, string_pos_ext(endChar, _string, startPos) - startPos)
}