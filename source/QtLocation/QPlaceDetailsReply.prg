/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceDetailsReply INHERIT QPlaceReply

   METHOD new
   METHOD delete
   METHOD type
   METHOD place

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceDetailsReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceDetailsReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceDetailsReply>
#endif
#endif

/*
explicit QPlaceDetailsReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACEDETAILSREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * o = new QPlaceDetailsReply ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}


HB_FUNC_STATIC( QPLACEDETAILSREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * obj = (QPlaceDetailsReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACEDETAILSREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * obj = (QPlaceDetailsReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
QPlace place() const
*/
HB_FUNC_STATIC( QPLACEDETAILSREPLY_PLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceDetailsReply * obj = (QPlaceDetailsReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * ptr = new QPlace( obj->place () );
    _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
  }
#endif
}



#pragma ENDDUMP
