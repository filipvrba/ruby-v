module rb

import regex

pub struct String {
	self string
}

pub fn (s String) to_v() string {
	return s.self
}

pub fn (s String) sub(pattern string, value string) String {
	mut re := regex.regex_opt(pattern) or { panic(err) }
	return String{ re.replace(s.self, value) }
}