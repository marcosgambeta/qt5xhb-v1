$header

#include "hbclass.ch"

CLASS QSGTransformNode INHERIT QSGNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGTransformNode()
*/
HB_FUNC_STATIC( QSGTRANSFORMNODE_NEW )
{
  QSGTransformNode * o = new QSGTransformNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
