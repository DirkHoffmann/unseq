
default:
	@echo "No compilation is needed for this AWK script."
	@echo "Try:"; echo "	make tests"
	@echo "or"; echo "	make install"
	@echo "or"; echo "	make package"

U=./unseq

tests:
	(seq 1 4 54; seq 57 2 100; for i in $$(seq 10); do echo 111; done) | $U
	@echo
	(seq 1 53; echo 53; seq 53 100) | $U
	@echo
	(echo "=== Text in file ==="; seq 100 ) | $U
	@echo
	(for i in 1 53 53 53 54; do echo $$i; done) | $U
	@echo
	seq 4 4 80 | $U
	@echo
	(echo ' 1'; echo '2 '; echo 3) | $U
	@echo
	for j in $$(seq 0 3 9); do for i in $$(seq 5); do echo $$j; done; done | $U

install:
	install unseq /usr/bin

package:
	rpmbuild -ba unseq.spec
	
