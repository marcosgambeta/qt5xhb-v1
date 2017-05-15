/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QPlaceReply INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD type
   METHOD errorString
   METHOD error
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceReply>
#endif
#endif

/*
explicit QPlaceReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACEREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QPlaceReply * o = new QPlaceReply ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QPLACEREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QPLACEREPLY_ISFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished () );
  }
#endif
}


/*
virtual Type type() const
*/
HB_FUNC_STATIC( QPLACEREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type ();
    hb_retni( i );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QPLACEREPLY_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString ().toLatin1().data() );
  }
#endif
}


/*
QPlaceReply::Error error() const
*/
HB_FUNC_STATIC( QPLACEREPLY_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error ();
    hb_retni( i );
  }
#endif
}


/*
virtual void abort()
*/
HB_FUNC_STATIC( QPLACEREPLY_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
