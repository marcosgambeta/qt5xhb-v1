$header

#include "hbclass.ch"

CLASS QCommonStyle INHERIT QStyle

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCommonStyle ()
*/
HB_FUNC_STATIC( QCOMMONSTYLE_NEW )
{
  QCommonStyle * o = new QCommonStyle ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

#pragma ENDDUMP
