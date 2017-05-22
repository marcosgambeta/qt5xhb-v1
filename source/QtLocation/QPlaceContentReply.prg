/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECONTENTREQUEST
#endif

CLASS QPlaceContentReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD totalCount
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceContentReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceContentReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceContentReply>
#endif
#endif

/*
explicit QPlaceContentReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QPlaceContentReply * o = new QPlaceContentReply ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QPLACECONTENTREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QPLACECONTENTREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}



/*
int totalCount() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_TOTALCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->totalCount () );
  }
#endif
}


/*
QPlaceContentRequest request() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREQUEST", true );
  }
#endif
}


/*
QPlaceContentRequest previousPageRequest() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_PREVIOUSPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->previousPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREQUEST", true );
  }
#endif
}


/*
QPlaceContentRequest nextPageRequest() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_NEXTPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->nextPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREQUEST", true );
  }
#endif
}



#pragma ENDDUMP
