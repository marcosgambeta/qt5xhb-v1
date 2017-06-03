/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QHttpMultiPart INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD boundary
   METHOD setBoundary
   METHOD setContentType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHttpMultiPart
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHttpMultiPart>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHttpMultiPart>
#endif

/*
QHttpMultiPart ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_NEW1 )
{
  QHttpMultiPart * o = new QHttpMultiPart ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_NEW2 )
{
  int par1 = hb_parni(1);
  QHttpMultiPart * o = new QHttpMultiPart ( (QHttpMultiPart::ContentType) par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QHttpMultiPart ( QObject * parent = 0 )
//[2]QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QHTTPMULTIPART_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QHTTPMULTIPART_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHTTPMULTIPART_DELETE )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append ( const QHttpPart & httpPart )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_APPEND )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHttpPart * par1 = (QHttpPart *) _qt5xhb_itemGetPtr(1);
    obj->append ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray boundary () const
*/
HB_FUNC_STATIC( QHTTPMULTIPART_BOUNDARY )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->boundary () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setBoundary ( const QByteArray & boundary )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETBOUNDARY )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    obj->setBoundary ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentType ( ContentType contentType )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETCONTENTTYPE )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setContentType ( (QHttpMultiPart::ContentType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
