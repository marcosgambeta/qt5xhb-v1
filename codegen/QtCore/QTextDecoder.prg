$header

#include "hbclass.ch"

CLASS QTextDecoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toUnicode
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
QTextDecoder(const QTextCodec * codec)
*/
void QTextDecoder_new1 ()
{
  const QTextCodec * par1 = (const QTextCodec *) _qt5xhb_itemGetPtr(1);
  QTextDecoder * o = new QTextDecoder ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
*/
void QTextDecoder_new2 ()
{
  const QTextCodec * par1 = (const QTextCodec *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QTextDecoder * o = new QTextDecoder ( par1, (QTextCodec::ConversionFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextDecoder(const QTextCodec * codec)
//[2]QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)

HB_FUNC_STATIC( QTEXTDECODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QTextDecoder_new1();
  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && ISNUM(2) )
  {
    QTextDecoder_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString toUnicode(const char * chars, int len)
*/
$internalMethod=|QString|toUnicode,toUnicode1|const char *,int

/*
QString toUnicode(const QByteArray & ba)
*/
$internalMethod=|QString|toUnicode,toUnicode3|const QByteArray &

//[1]QString toUnicode(const char * chars, int len)
//[2]void toUnicode(QString * target, const char * chars, int len) // TODO: implementar(?)
//[3]QString toUnicode(const QByteArray & ba)

HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QTextDecoder_toUnicode1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextDecoder_toUnicode3();
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
