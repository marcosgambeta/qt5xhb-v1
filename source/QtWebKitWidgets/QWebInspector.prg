/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBPAGE
REQUEST QSIZE
#endif

CLASS QWebInspector INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebInspector
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebInspector>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebInspector>
#endif

/*
QWebInspector ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWEBINSPECTOR_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QWebInspector * o = new QWebInspector ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QWEBINSPECTOR_DELETE )
{
  QWebInspector * obj = (QWebInspector *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWebPage * page () const
*/
HB_FUNC_STATIC( QWEBINSPECTOR_PAGE )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * ptr = obj->page (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBPAGE" );
  }
}


/*
void setPage ( QWebPage * page )
*/
HB_FUNC_STATIC( QWEBINSPECTOR_SETPAGE )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * par1 = (QWebPage *) _qt5xhb_itemGetPtr(1);
    obj->setPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool event ( QEvent * ev )
*/
HB_FUNC_STATIC( QWEBINSPECTOR_EVENT )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWEBINSPECTOR_SIZEHINT )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
