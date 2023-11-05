
default:
	@echo "No compilation is needed for this AWK script."
	@echo "Try:"; echo "	make tests"
	@#echo "or"; echo "	make install"

tests:
	(seq 1 4 54; seq 57 2 100; for i in $$(seq 10); do echo 111; done) | ./unseq
	(seq 1 53; echo 53; seq 53 100) | ./unseq
	(echo "=== Text in file ==="; seq 100 ) | ./unseq
	(for i in 1 53 53 53 54; do echo $$i; done) | ./unseq
	
