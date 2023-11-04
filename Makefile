
default:
	@echo "No compilation is needed for this AWK script."

test:
	(seq 1 4 54; seq 57 2 100; for i in $$(seq 10); do echo 111; done) | ./unseq
	
