fn (mut m Machine) test_encode(l int) {
	println('\nENCODING TEST for ')
	print_symbols(m.k_)
	//m.display_encoding_state(-1)
	println('')
	p := random_symbols(l, u64(m.s))
	m.reset()
	c := m.encode(p,true)
	m.reset()
	d := m.decode(c, false)
	m.reset()
	//print('p : ')
	print_symbols(p)
	//print('c : ')
	print_symbols(c)
	//print('d : ')
	print_symbols(d)
	if same(p, d) {
		println('SUCCESS      p != c : ${count(p,c):3}/${l:-}  \n')
	} else {
		println('FAILURE\n')
	}
}

fn same(x []Symbol, y []Symbol) bool {
	if x.len != y.len {
		return false
	}
	for i in 0 .. x.len {
		if x[i] != y[i] {
			return false
		}
	}
	return true
}
