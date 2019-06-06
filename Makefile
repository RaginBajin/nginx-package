TOPDIR := $(shell dirname $(CURDIR))/build

default:
	@echo "Usage: make rpm or make deb"

rpm: RPM clean
deb: DEB clean

RPM:
	mkdir -p ${TOPDIR}/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
	cp -a src/* ${TOPDIR}/SOURCES/
	cp -a nginx.spec ${TOPDIR}/SPECS/
	rpmbuild -ba --define "_topdir ${TOPDIR}" --define "dist .el7" --clean ${TOPDIR}/SPECS/nginx.spec
	find ${TOPDIR}/ -type f -iname \*.rpm -exec cp -a {} ../ \;

.PHONY: clean

clean:  
	rm -rf ${TOPDIR}

