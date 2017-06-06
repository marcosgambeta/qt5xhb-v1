/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QWIDGET
#endif

CLASS QGraphicsProxyWidget INHERIT QGraphicsWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createProxyForChildWidget
   METHOD setWidget
   METHOD subWidgetRect
   METHOD widget
   METHOD paint
   METHOD setGeometry
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsProxyWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsProxyWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsProxyWidget>
#endif

/*
QGraphicsProxyWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_NEW )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QGraphicsProxyWidget * o = new QGraphicsProxyWidget ( par1, (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_DELETE )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QGraphicsProxyWidget * createProxyForChildWidget ( QWidget * child )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_CREATEPROXYFORCHILDWIDGET )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsProxyWidget * ptr = obj->createProxyForChildWidget ( PQWIDGET(1) );
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSPROXYWIDGET" );
  }
}


/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_SETWIDGET )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF subWidgetRect ( const QWidget * widget ) const
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_SUBWIDGETRECT )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->subWidgetRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_WIDGET )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_PAINT )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    obj->paint ( PQPAINTER(1), par2, PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_SETGEOMETRY )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPROXYWIDGET_TYPE )
{
  QGraphicsProxyWidget * obj = (QGraphicsProxyWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}



#pragma ENDDUMP
