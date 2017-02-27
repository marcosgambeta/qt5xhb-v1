/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSPLITTER
REQUEST QSIZE
#endif

CLASS QSplitterHandle INHERIT QWidget

   DATA class_id INIT Class_Id_QSplitterHandle
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD opaqueResize
   METHOD orientation
   METHOD setOrientation
   METHOD splitter
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSplitterHandle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSplitterHandle>
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
#include <QSplitterHandle>
#endif
#endif

/*
QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QSplitter * par2 = (QSplitter *) _qtxhb_itemGetPtr(2);
  QSplitterHandle * o = new QSplitterHandle (  (Qt::Orientation) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSplitterHandle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSPLITTERHANDLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSplitterHandle * obj = (QSplitterHandle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool opaqueResize () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_OPAQUERESIZE )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->opaqueResize (  ) );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_ORIENTATION )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}


/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SETORIENTATION )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSplitter * splitter () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SPLITTER )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSplitter * ptr = obj->splitter (  );
    _qt5xhb_createReturnClass ( ptr, "QSPLITTER" );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_SIZEHINT )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
