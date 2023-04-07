module main

import rb

fn main() {
	path := rb.File{'lol/have.txt'}.dirname().to_v()
	println(path)
}
