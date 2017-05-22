/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QWinColorizationChangeEvent INHERIT QWinEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD opaqueBlend

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinColorizationChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinColorizationChangeEvent>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinColorizationChangeEvent>
#endif
#endif

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


HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinColorizationChangeEvent * obj = (QWinColorizationChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

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
    hb_retl( obj->opaqueBlend () );
  }
#endif
}



#pragma ENDDUMP
