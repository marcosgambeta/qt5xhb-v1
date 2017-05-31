/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
#endif

CLASS QSslError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD certificate
   METHOD error
   METHOD errorString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslError>
#endif

/*
QSslError ()
*/
HB_FUNC_STATIC( QSSLERROR_NEW1 )
{
  QSslError * o = new QSslError ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslError ( SslError error )
*/
HB_FUNC_STATIC( QSSLERROR_NEW2 )
{
  QSslError * par1 = (QSslError *) _qt5xhb_itemGetPtr(1);
  QSslError * o = new QSslError ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslError ( SslError error, const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLERROR_NEW3 )
{
  int par1 = hb_parni(1);
  QSslCertificate * par2 = (QSslCertificate *) _qt5xhb_itemGetPtr(2);
  QSslError * o = new QSslError ( (QSslError::SslError) par1, *par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslError ( const QSslError & other )
*/
HB_FUNC_STATIC( QSSLERROR_NEW4 )
{
  QSslError * par1 = (QSslError *) _qt5xhb_itemGetPtr(1);
  QSslError * o = new QSslError ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QSslError ()
//[2]QSslError ( SslError error )
//[3]QSslError ( SslError error, const QSslCertificate & certificate )
//[4]QSslError ( const QSslError & other )

HB_FUNC_STATIC( QSSLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSSLCERTIFICATE(2) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSSLERROR(1) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLERROR_DELETE )
{
  QSslError * obj = (QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSslCertificate certificate () const
*/
HB_FUNC_STATIC( QSSLERROR_CERTIFICATE )
{
  QSslError * obj = (QSslError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * ptr = new QSslCertificate( obj->certificate () );
    _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
  }
}


/*
SslError error () const
*/
HB_FUNC_STATIC( QSSLERROR_ERROR )
{
  QSslError * obj = (QSslError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QSSLERROR_ERRORSTRING )
{
  QSslError * obj = (QSslError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
}



HB_FUNC_STATIC( QSSLERROR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSSLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSSLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSSLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLERROR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
