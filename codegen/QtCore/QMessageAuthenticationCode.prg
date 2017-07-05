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
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQBYTEARRAY(2) )
  {
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
    QMessageAuthenticationCode * o = new QMessageAuthenticationCode ( (QCryptographicHash::Algorithm) hb_parni(1), par2 );
    _qt5xhb_storePointerAndFlag( o, false );
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
void setKey(const QByteArray &key)
*/
$method=|void|setKey|const QByteArray &

/*
void addData(const char *data, int length)
*/
void QMessageAuthenticationCode_addData1 ()
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addData ( PCONSTCHAR(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addData(const QByteArray &data)
*/
void QMessageAuthenticationCode_addData2 ()
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addData ( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addData(QIODevice *device)
*/
void QMessageAuthenticationCode_addData3 ()
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->addData ( PQIODEVICE(1) ) );
  }
}

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
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_RESULT )
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->result () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
static QByteArray hash(const QByteArray &message, const QByteArray &key,QCryptographicHash::Algorithm method)
*/
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_HASH )
{
  if( ISQBYTEARRAY(1) && ISQBYTEARRAY(2) && ISNUM(3) )
  {
    QByteArray * ptr = new QByteArray( QMessageAuthenticationCode::hash ( *PQBYTEARRAY(1), *PQBYTEARRAY(2), (QCryptographicHash::Algorithm) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
