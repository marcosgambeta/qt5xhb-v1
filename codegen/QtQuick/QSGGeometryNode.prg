$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIAL
#endif

CLASS QSGGeometryNode INHERIT QSGBasicGeometryNode

   DATA self_destruction INIT .F.

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

/*
QSGGeometryNode()
*/
$constructor=|new|

$deleteMethod

/*
QSGMaterial * material() const
*/
$method=|QSGMaterial *|material|

/*
QSGMaterial * opaqueMaterial() const
*/
$method=|QSGMaterial *|opaqueMaterial|

/*
void setMaterial(QSGMaterial * material)
*/
$method=|void|setMaterial|QSGMaterial *

/*
void setOpaqueMaterial(QSGMaterial * material)
*/
$method=|void|setOpaqueMaterial|QSGMaterial *

#pragma ENDDUMP
