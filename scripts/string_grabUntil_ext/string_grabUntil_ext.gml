function string_grabUntil_ext(_string, endChar, startPos, cut_start, cut_end){
	return string_copy(_string, startPos + cut_start, string_pos_ext(endChar, _string, startPos) - startPos - cut_end - cut_start)
}