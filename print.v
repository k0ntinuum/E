pub fn print_symbol(s Symbol) {
	match s {
		0 { print('O') }
		1 { print('|') }
		else { print('${s}') }
	}
}

pub fn print_symbols(v []Symbol) {
	for i in 0 .. v.len {
		print_symbol(v[i])
	}
	print('\n')
}
