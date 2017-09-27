version=1.6.0-0

release=unstable

deb=${release}/bash-unit_${version}_amd64.deb

#TODO les fichiers sont bien générés comme ça mais mal placés :/

install: Release.gpg Release Packages
	cp $? ${release}

Release.gpg: Release
	gpg -abs -u C9B473E3 -o $@ $<

Release: Packages
	apt-ftparchive -c ../../debian/debian-repo.conf release $< > $@

Packages: ${deb}
	apt-ftparchive -c ../../debian/debian-repo.conf packages ${release} > $@
