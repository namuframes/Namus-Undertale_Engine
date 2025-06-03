// Wraps text to a specific length, ignoring any formatting tags.
function wrap_formatted_text(text, line_length) {
	var wrapped_text = "";
	var current_line_length = 0;
	
	var text_length = string_length(text);
	for (var i = 1; i <= text_length; i++) {
		var char = string_char_at(text, i);
		
		if (char == " ") {
			// Start a new line if the next word will exceed the maximum line length
			// (j is allowed to go past text_length so that the final word can still be wrapped)
			var lookahead_length = 1;
			
			for (var j = i + 1; j <= text_length + 1; j++) {
				var lookahead_char = string_char_at(text, j);
				
				if (lookahead_char == " " || 
				lookahead_char == "&" || 
				lookahead_char == "") {
					if (current_line_length + lookahead_length > line_length) {
						wrapped_text += "&";
						current_line_length = 0;
					} else {
						// The space still hasn't been added to the string, so add it here if we don't need to
						// start a new line
						wrapped_text += " ";
						current_line_length++;
					}
					
					break;
				} else if (lookahead_char == "{") {
					if (string_char_at(text, j + 1) == "{") {
						// Handle escaped "{"s
						lookahead_length++;
						j++;
					} else {
						// Skip past tag
						while (string_char_at(text, ++j) != "}") {};
						j--;
					}
				} else {
					lookahead_length++;
				}
			}
		} else if (char == "{") {
			if (string_char_at(text, i + 1) == "{") {
				// Handle escaped "{"s
				wrapped_text += char;
				current_line_length++;
				i++;
			} else {
				// Skip past tag
				wrapped_text += char;
				var tag = "";
				
				do {
					char = string_char_at(text, ++i);
					wrapped_text += char;
					
					if (char != "}") {
						tag += char;
					}
				} until (char == "}");
			}
		} else {
			wrapped_text += char;
			
			// Handle intentional newlines
    		if (char == "&") {
    			current_line_length = 0;
    		} else {
    		    current_line_length++;
    		}
		}
	}
	
	return wrapped_text;
}