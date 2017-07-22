$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMessageAuthenticationCode

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reset
   METHOD setKey
   METHOD addData
   METHOD result
   METHOD hash

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QMessageAuthenticationCode(QCryptographicHash::Algorithm method,const QByteArray &key = QByteArray())
*/
$constructor=|new|QCryptographicHash::Algorithm,const QByteArray &=QByteArray()

$deleteMethod

/*
void reset()
*/
$method=|void|reset|

/*
void setKey(const QByteArray &key)
*/
$method=|void|setKey|const QByteArray &

/*
void addData(const char *data, int length)
*/
$internalMethod=|void|addData,addData1|const char *,int

/*
void addData(const QByteArray &data)
*/
$internalMethod=|void|addData,addData2|const QByteArray &

/*
bool addData(QIODevice *device)
*/
$method=|bool|addData,addData3|QIODevice *

//[1]void addData(const char *data, int length)
//[2]void addData(const QByteArray &data)
//[3]bool addData(QIODevice *device)

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageAuthenticationCode_addData1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QMessageAuthenticationCode_addData2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QMessageAuthenticationCode_addData3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray result() const
*/
$method=|QByteArray|result|

/*
static QByteArray hash(const QByteArray &message, const QByteArray &key,QCryptographicHash::Algorithm method)
*/
$staticMethod=|QByteArray|hash|const QByteArray &,const QByteArray &,QCryptographicHash::Algorithm

$extraMethods

#pragma ENDDUMP
