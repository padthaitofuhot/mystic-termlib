source mystic-termlib.bash

mystic_ansi_test() {
	for bg in bblack bred bgreen byellow bblue bmagenta bcyan bwhite; do
		for bbright in bdim bbright; do
			for fg in black red green yellow blue magenta cyan white; do
				for bright in dim bright; do
					mystic_echo ${bright} ${fg} ${bbright} ${bg} text "#" nnl
				done
			done
		done
		echo
	done
}

# Tests below test only foreground colors but can be changed to test bg colors
mystic_8bit_test() {
	n=0
	for fg in {000..255}; do
		mystic_echo xterm ${fg} text "#" nnl
		((n++))
		[ $((n % 80)) == 0 ] && echo
	done
	echo
}

mystic_24bit_test() {
	n=0
	for fr in {000..255..5}; do
		for fg in {000..255..5}; do
			for fb in {000..255..5}; do
				mystic_echo rgb ${fr} ${fg} ${fb} text "#" nnl
				((n++))
				[ $((n % 80)) == 0 ] && echo
			done
		done
	done
}

printf "%s\n" "ANSI test"
mystic_ansi_test
printf "\n"
printf "%s\n" "8-bit test"
mystic_8bit_test
printf "\n"
printf "%s\n" "24-bit test"
mystic_24bit_test
printf "\n"
