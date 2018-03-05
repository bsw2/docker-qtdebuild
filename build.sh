mkdir -p ${PKGNAME}-${PKGVERSION}/debian
curl http://gitlab.2215.denlin/bsw2/debian/repository/${PKGNAME}/archive.tar |tar --strip-components=1 -C ${PKGNAME}-${PKGVERSION}/debian -xf -
make -f rules -C  ${PKGNAME}-${PKGVERSION}/debian get-orig-source
tar --strip-components=1 -C ${PKGNAME}-${PKGVERSION}/ -xf ${PKGNAME}_${PKGVERSION}.orig.tar.gz
cd ${PKGNAME}-${PKGVERSION}/
debuild -us -uc
