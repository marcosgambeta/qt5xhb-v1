$header

#include "hbclass.ch"

CLASS QWinColorizationChangeEvent INHERIT QWinEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD opaqueBlend

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QWinColorizationChangeEvent(QRgb color, bool opaque)
*/
HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QRgb par1 = hb_parni(1);
  bool par2 = hb_parl(2);
  QWinColorizationChangeEvent * o = new QWinColorizationChangeEvent ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
QRgb color() const
*/
HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinColorizationChangeEvent * obj = (QWinColorizationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->color () );
  }
#endif
}


/*
bool opaqueBlend() const
*/
HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_OPAQUEBLEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinColorizationChangeEvent * obj = (QWinColorizationChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->opaqueBlend () );
  }
#endif
}



#pragma ENDDUMP
