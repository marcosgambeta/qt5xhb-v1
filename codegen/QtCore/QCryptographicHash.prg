$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QCryptographicHash

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reset
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
QCryptographicHash(Algorithm method)
*/
HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCryptographicHash * o = new QCryptographicHash ( (QCryptographicHash::Algorithm) hb_parni(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void reset()
*/
$method=|void|reset|

/*
void addData(const char *data, int length)
*/
$internalMethod=|void|addData,addData1|const char *,int

/*
void addData(const QByteArray &data)
*/
$internalMethod=|void|addData,addData2|const QByteArray &

/*
bool addData(QIODevice* device)
*/
$internalMethod=|bool|addData,addData3|QIODevice *

//[1]void addData(const char *data, int length)
//[2]void addData(const QByteArray &data)
//[3]bool addData(QIODevice* device)

HB_FUNC_STATIC( QCRYPTOGRAPHICHASH_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QCryptographicHash_addData1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QCryptographicHash_addData2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QCryptographicHash_addData3();
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
static QByteArray hash(const QByteArray &data, Algorithm method)
*/
$staticMethod=|QByteArray|hash|const QByteArray &,QCryptographicHash::Algorithm

$extraMethods

#pragma ENDDUMP
