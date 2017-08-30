$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QREGION
#endif

CLASS QPaintEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD rect
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPaintEvent ( const QRegion & paintRegion )
*/
$internalConstructor=|new1|const QRegion &

/*
QPaintEvent ( const QRect & paintRect )
*/
$internalConstructor=|new2|const QRect &

//[1]QPaintEvent ( const QRegion & paintRegion )
//[2]QPaintEvent ( const QRect & paintRect )

HB_FUNC_STATIC( QPAINTEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QPaintEvent_new1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QPaintEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QRect & rect () const
*/
$method=|const QRect &|rect|

/*
const QRegion & region () const
*/
$method=|const QRegion &|region|

#pragma ENDDUMP
