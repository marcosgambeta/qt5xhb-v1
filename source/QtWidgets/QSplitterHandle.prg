/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSPLITTER
REQUEST QSIZE
#endif

CLASS QSplitterHandle INHERIT QWidget

   DATA class_id INIT Class_Id_QSplitterHandle
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
#include <QSplitterHandle>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSplitterHandle>
#endif

/*
QSplitterHandle ( Qt::Orientation orientation, QSplitter * parent )
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_NEW )
{
  int par1 = hb_parni(1);
  QSplitter * par2 = (QSplitter *) _qt5xhb_itemGetPtr(2);
  QSplitterHandle * o = new QSplitterHandle (  (Qt::Orientation) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSPLITTERHANDLE_DELETE )
{
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
}

/*
bool opaqueResize () const
*/
HB_FUNC_STATIC( QSPLITTERHANDLE_OPAQUERESIZE )
{
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QSplitterHandle * obj = (QSplitterHandle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
