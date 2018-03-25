DEPS= $(wildcard *.m4i)
M4= $(patsubst %.m4,%.spthy,$(wildcard *.m4))

# Disables the pause step after each proof file is completed
# export NO_PAUSE=1

# Suppresses output of Tamarin while proving
# export PIPE_OUPUT=2>/dev/null

all:
#	$(MAKE) clean
	$(MAKE) $(M4)

clean:
	rm -f $(M4)

%.spthy: %.m4 $(DEPS)
	m4 $(FLAGS) -I lemmas/ -I . -I model/  $< > $@

.PHONY: clean
