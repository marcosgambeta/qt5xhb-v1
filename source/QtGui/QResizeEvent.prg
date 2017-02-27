/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QResizeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QResizeEvent>
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
#include <QResizeEvent>
#endif
#endif

/*
QResizeEvent(const QSize &size, const QSize &oldSize)
*/
HB_FUNC_STATIC( QRESIZEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
  QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
  QResizeEvent * o = new QResizeEvent ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QResizeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QRESIZEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QResizeEvent * obj = (QResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QSize &size() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_SIZE )
{
  QResizeEvent * obj = (QResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSize * ptr = &obj->size (  );
    _qt5xhb_createReturnClass ( ptr, "QSIZE" );
  }
}


/*
const QSize &oldSize() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_OLDSIZE )
{
  QResizeEvent * obj = (QResizeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSize * ptr = &obj->oldSize (  );
    _qt5xhb_createReturnClass ( ptr, "QSIZE" );
  }
}



#pragma ENDDUMP
