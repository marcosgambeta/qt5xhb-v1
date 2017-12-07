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

$prototype=QTextDecoder(const QTextCodec * codec)
$internalConstructor=|new1|const QTextCodec *

$prototype=QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
$internalConstructor=|new2|const QTextCodec *,QTextCodec::ConversionFlags

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

$prototype=QString toUnicode(const char * chars, int len)
$internalMethod=|QString|toUnicode,toUnicode1|const char *,int

$prototype=void toUnicode(QString * target, const char * chars, int len)

$prototype=QString toUnicode(const QByteArray & ba)
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

$prototype=bool hasFailure() const
$method=|bool|hasFailure|

$extraMethods

#pragma ENDDUMP
