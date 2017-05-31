/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceIdReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD operationType
   METHOD id

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceIdReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceIdReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceIdReply>
#endif
#endif

/*
explicit QPlaceIdReply(OperationType operationType, QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACEIDREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  int par1 = hb_parni(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QPlaceIdReply * o = new QPlaceIdReply ( (QPlaceIdReply::OperationType) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QPLACEIDREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QPLACEIDREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}

/*
OperationType operationType() const
*/
HB_FUNC_STATIC( QPLACEIDREPLY_OPERATIONTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->operationType () );
  }
#endif
}


/*
QString id() const
*/
HB_FUNC_STATIC( QPLACEIDREPLY_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->id () ) );
  }
#endif
}



#pragma ENDDUMP
