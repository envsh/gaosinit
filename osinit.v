module main

import time
import os

import mkuse.vpp
import mkuse.vpp.xlog
import cxrt.coronav

fn main() {
	unsafe {
		asm { ".symver pow,pow@GLIBC_2.2.5" }
	}

	envs := vpp.lsenv()
	println(envs)

	for {
		time.sleep(3)
		t := time.now().format_ss()
		xlog.info('t=$t')
	}
}
