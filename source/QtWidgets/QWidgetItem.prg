/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QWidgetItem INHERIT QLayoutItem

   DATA class_id INIT Class_Id_QWidgetItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD controlTypes
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWidgetItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWidgetItem>
#endif

/*
QWidgetItem(QWidget * widget)
*/
HB_FUNC_STATIC( QWIDGETITEM_NEW )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QWidgetItem * o = new QWidgetItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QWIDGETITEM_DELETE )
{
  QWidgetItem * obj = (QWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QSizePolicy::ControlTypes controlTypes() const
*/
HB_FUNC_STATIC( QWIDGETITEM_CONTROLTYPES )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->controlTypes (  ) );
  }
}


/*
virtual Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QWIDGETITEM_EXPANDINGDIRECTIONS )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expandingDirections (  ) );
  }
}


/*
virtual QRect geometry() const
*/
HB_FUNC_STATIC( QWIDGETITEM_GEOMETRY )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QWIDGETITEM_HASHEIGHTFORWIDTH )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}


/*
virtual int heightForWidth(int w) const
*/
HB_FUNC_STATIC( QWIDGETITEM_HEIGHTFORWIDTH )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool isEmpty() const
*/
HB_FUNC_STATIC( QWIDGETITEM_ISEMPTY )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
virtual QSize maximumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEM_MAXIMUMSIZE )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize minimumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEM_MINIMUMSIZE )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry(const QRect & rect)
*/
HB_FUNC_STATIC( QWIDGETITEM_SETGEOMETRY )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QWIDGETITEM_SIZEHINT )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QWidget * widget()
*/
HB_FUNC_STATIC( QWIDGETITEM_WIDGET )
{
  QWidgetItem * obj = (QWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}



#pragma ENDDUMP
