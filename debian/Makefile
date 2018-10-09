version=1.6.1-2

target=../docs/debian
release=unstable
source_deb=../../bash-unit_${version}_amd64.deb
target_deb=${target}/${release}/bash-unit_${version}_amd64.deb
target_makefile=${target}/Makefile

all: ${target_makefile} ${target_deb}
	$(MAKE) -C ${target}

${target_makefile}: Makefile_debrepo ${target}
	cp $< $@

${target_deb}: ${source_deb} ${target}
	cp $< $@

${target}:
	mkdir -p ${target}/${release}

clean:
	rm -rf ${target}
