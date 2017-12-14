$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIAL
#endif

CLASS QSGGeometryNode INHERIT QSGBasicGeometryNode

   METHOD new
   METHOD delete
   METHOD material
   METHOD opaqueMaterial
   METHOD setMaterial
   METHOD setOpaqueMaterial

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGGeometryNode()
$constructor=|new|

$deleteMethod

$prototype=QSGMaterial * material() const
$method=|QSGMaterial *|material|

$prototype=QSGMaterial * opaqueMaterial() const
$method=|QSGMaterial *|opaqueMaterial|

$prototype=void setMaterial(QSGMaterial * material)
$method=|void|setMaterial|QSGMaterial *

$prototype=void setOpaqueMaterial(QSGMaterial * material)
$method=|void|setOpaqueMaterial|QSGMaterial *

#pragma ENDDUMP
