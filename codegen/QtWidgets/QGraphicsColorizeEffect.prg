/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsColorizeEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsColorizeEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsColorizeEffect>
#endif

/*
QGraphicsColorizeEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_NEW )
{
  QGraphicsColorizeEffect * o = new QGraphicsColorizeEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_DELETE )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QColor color () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_COLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->color () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
qreal strength () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_STRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->strength () );
  }
}


/*
void setColor ( const QColor & c )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETCOLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrength ( qreal strength )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETSTRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStrength ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
