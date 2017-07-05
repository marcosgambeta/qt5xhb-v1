$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QTextEncoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fromUnicode
   METHOD hasFailure

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
QTextEncoder(const QTextCodec * codec)
*/
void QTextEncoder_new1 ()
{
  const QTextCodec * par1 = (const QTextCodec *) _qt5xhb_itemGetPtr(1);
  QTextEncoder * o = new QTextEncoder ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextEncoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
*/
void QTextEncoder_new2 ()
{
  const QTextCodec * par1 = (const QTextCodec *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QTextEncoder * o = new QTextEncoder ( par1, (QTextCodec::ConversionFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextEncoder(const QTextCodec * codec)
//[2]QTextEncoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)

HB_FUNC_STATIC( QTEXTENCODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextEncoder_new1();
  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && ISNUM(2) )
  {
    QTextEncoder_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray fromUnicode(const QString & str)
*/
void QTextEncoder_fromUnicode1 ()
{
  QTextEncoder * obj = (QTextEncoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray fromUnicode(const QChar * uc, int len)
*/
void QTextEncoder_fromUnicode2 ()
{
  QTextEncoder * obj = (QTextEncoder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QChar * par1 = (const QChar *) _qt5xhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( par1, PINT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

//[1]QByteArray fromUnicode(const QString & str)
//[2]QByteArray fromUnicode(const QChar * uc, int len)

HB_FUNC_STATIC( QTEXTENCODER_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextEncoder_fromUnicode1();
  }
  else if( ISNUMPAR(2) && ISQCHAR(1) && ISNUM(2) )
  {
    QTextEncoder_fromUnicode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasFailure() const
*/
$method=|bool|hasFailure|

$extraMethods

#pragma ENDDUMP
