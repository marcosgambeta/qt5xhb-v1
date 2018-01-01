/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QWidgetItemV2 INHERIT QWidgetItem

   METHOD new
   METHOD delete
   METHOD sizeHint
   METHOD minimumSize
   METHOD maximumSize
   METHOD heightForWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWidgetItemV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWidgetItemV2>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWidgetItemV2>
#endif

/*
QWidgetItemV2(QWidget *widget)
*/
HB_FUNC_STATIC( QWIDGETITEMV2_NEW )
{
  QWidgetItemV2 * o = new QWidgetItemV2 ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QWIDGETITEMV2_DELETE )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSize sizeHint() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_SIZEHINT )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize minimumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_MINIMUMSIZE )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize maximumSize() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_MAXIMUMSIZE )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int heightForWidth(int width) const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_HEIGHTFORWIDTH )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}



#pragma ENDDUMP
