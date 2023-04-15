module rb

import os

pub struct Os {
}

pub fn get_app_name() string {
	args := unsafe { os.args }
	app_name := os.file_name(args[0])
	return app_name
}