/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QWebEngineCertificateError

   DATA pointer
   DATA class_id INIT Class_Id_QWebEngineCertificateError
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD error
   METHOD url
   METHOD isOverridable
   METHOD errorDescription
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineCertificateError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineCertificateError>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineCertificateError>
#endif
#endif

/*
QWebEngineCertificateError(int error, QUrl url, bool overridable, QString errorDescription)
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  int par1 = hb_parni(1);
  QUrl * par2 = (QUrl *) _qtxhb_itemGetPtr(2);
  bool par3 = hb_parl(3);
  QString par4 = QLatin1String( hb_parc(4) );
  QWebEngineCertificateError * o = new QWebEngineCertificateError ( par1, *par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebEngineCertificateError *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Error error() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
bool isOverridable() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_ISOVERRIDABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOverridable (  ) );
  }
#endif
}


/*
QString errorDescription() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_ERRORDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorDescription (  ).toLatin1().data() );
  }
#endif
}



HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_NEWFROM )
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

HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBENGINECERTIFICATEERROR_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBENGINECERTIFICATEERROR_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_SETSELFDESTRUCTION )
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