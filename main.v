fn main() {
	// k := key(2,7)
	mut m := square_machine(3, 4)
	m.test_encode(128)
	m.test_encrypt(64 , 40)
}
