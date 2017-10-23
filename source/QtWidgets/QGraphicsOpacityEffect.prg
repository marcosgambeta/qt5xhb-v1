/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsOpacityEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsOpacityEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsOpacityEffect>
#endif

/*
QGraphicsOpacityEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_NEW )
{
  QGraphicsOpacityEffect * o = new QGraphicsOpacityEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_DELETE )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
qreal opacity () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->opacity () );
  }
}


/*
QBrush opacityMask () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->opacityMask () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpacityMask ( const QBrush & mask )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpacityMask ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
