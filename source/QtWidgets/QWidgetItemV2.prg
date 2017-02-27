/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QWidgetItemV2 INHERIT QWidgetItem

   DATA class_id INIT Class_Id_QWidgetItemV2
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QWidgetItemV2>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QWidgetItemV2>
#endif
#endif

/*
QWidgetItemV2(QWidget *widget)
*/
HB_FUNC_STATIC( QWIDGETITEMV2_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QWidgetItemV2 * o = new QWidgetItemV2 ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWidgetItemV2 *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWIDGETITEMV2_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QWIDGETITEMV2_SIZEHINT )
{
  QWidgetItemV2 * obj = (QWidgetItemV2 *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
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
    QSize * ptr = new QSize( obj->minimumSize (  ) );
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
    QSize * ptr = new QSize( obj->maximumSize (  ) );
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
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}



#pragma ENDDUMP
