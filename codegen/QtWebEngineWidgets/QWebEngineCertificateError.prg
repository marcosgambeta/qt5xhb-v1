$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QWebEngineCertificateError

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QWebEngineCertificateError(int error, QUrl url, bool overridable, QString errorDescription)
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QUrl * par2 = (QUrl *) _qt5xhb_itemGetPtr(2);
  QWebEngineCertificateError * o = new QWebEngineCertificateError ( PINT(1), *par2, PBOOL(3), PQSTRING(4) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,4,0

/*
Error error() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
bool isOverridable() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_ISOVERRIDABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isOverridable () );
  }
#endif
}


/*
QString errorDescription() const
*/
HB_FUNC_STATIC( QWEBENGINECERTIFICATEERROR_ERRORDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineCertificateError * obj = (QWebEngineCertificateError *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorDescription () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
