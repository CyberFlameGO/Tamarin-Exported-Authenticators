DEPS= $(wildcard *.m4i)
M4= $(patsubst %.m4,%.spthy,$(wildcard *.m4))

# Disables the pause step after each proof file is completed
# export NO_PAUSE=1

# Suppresses output of Tamarin while proving
# export PIPE_OUPUT=2>/dev/null

all: tamarin-version.m4i
#	$(MAKE) clean
	$(MAKE) $(M4)

tamarin-version.m4i: 
	cp tamarin-version.m4i.new tamarin-version.m4i

axiom:
	cp tamarin-version.m4i.old tamarin-version.m4i

clean:
	rm -f $(M4)

%.spthy: %.m4 $(DEPS)
	m4 $(FLAGS) -I lemmas/ -I . -I model/  $< > $@

.PHONY: axiom clean
