$header

#include "hbclass.ch"

CLASS QSGVertexColorMaterial INHERIT QSGMaterial

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGVertexColorMaterial()
*/
HB_FUNC_STATIC( QSGVERTEXCOLORMATERIAL_NEW )
{
  QSGVertexColorMaterial * o = new QSGVertexColorMaterial ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
