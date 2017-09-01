$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
#endif

CLASS QTextCodec

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD canEncode
   METHOD toUnicode
   METHOD fromUnicode
   METHOD makeDecoder
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForHtml
   METHOD codecForUtfText

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
bool canEncode(QChar) const
*/
$internalMethod=|bool|canEncode,canEncode1|QChar

/*
bool canEncode(const QString&) const
*/
$internalMethod=|bool|canEncode,canEncode2|const QString &

//[1]bool canEncode(QChar) const
//[2]bool canEncode(const QString&) const

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QTextCodec_canEncode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_canEncode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toUnicode(const QByteArray&) const
*/
$internalMethod=|QString|toUnicode,toUnicode1|const QByteArray &

/*
QString toUnicode(const char* chars) const
*/
$internalMethod=|QString|toUnicode,toUnicode2|const char *

//[1]QString toUnicode(const QByteArray&) const
//[2]QString toUnicode(const char* chars) const
//[3]QString toUnicode(const char *in, int length, ConverterState *state = 0) const // TODO: implementar(?)

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_toUnicode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_toUnicode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray fromUnicode(const QString& uc) const
*/
$internalMethod=|QByteArray|fromUnicode,fromUnicode1|const QString &

//[1]QByteArray fromUnicode(const QString& uc) const
//[2]QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const // TODO: implementar(?)

HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_fromUnicode1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextDecoder* makeDecoder(ConversionFlags flags = DefaultConversion) const
*/
$method=|QTextDecoder *|makeDecoder|QTextCodec::ConversionFlags=QTextCodec::DefaultConversion

/*
QTextEncoder* makeEncoder(ConversionFlags flags = DefaultConversion) const
*/
$method=|QTextEncoder *|makeEncoder|QTextCodec::ConversionFlags=QTextCodec::DefaultConversion

/*
virtual QByteArray name() const = 0
*/
$method=|QByteArray|name|

/*
virtual QList<QByteArray> aliases() const
*/
$method=|QList<QByteArray>|aliases|

/*
virtual int mibEnum() const = 0
*/
$method=|int|mibEnum|

/*
static QTextCodec* codecForName(const QByteArray &name)
*/
$internalStaticMethod=|QTextCodec *|codecForName,codecForName1|const QByteArray &

/*
static QTextCodec* codecForName(const char *name)
*/
$internalStaticMethod=|QTextCodec *|codecForName,codecForName2|const char *

//[1]static QTextCodec* codecForName(const QByteArray &name)
//[2]static QTextCodec* codecForName(const char *name)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_codecForName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec* codecForMib(int mib)
*/
$staticMethod=|QTextCodec *|codecForMib|int

/*
static QList<QByteArray> availableCodecs()
*/
$staticMethod=|QList<QByteArray>|availableCodecs|

/*
static QList<int> availableMibs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLEMIBS )
{
  QList<int> list = QTextCodec::availableMibs ();
  _qt5xhb_convert_qlist_int_to_array ( list );
}

/*
static QTextCodec* codecForLocale()
*/
$staticMethod=|QTextCodec *|codecForLocale|

/*
static void setCodecForLocale(QTextCodec *c)
*/
$staticMethod=|void|setCodecForLocale|QTextCodec *

/*
static QTextCodec *codecForHtml(const QByteArray &ba)
*/
$internalStaticMethod=|QTextCodec *|codecForHtml,codecForHtml1|const QByteArray &

/*
static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/
$internalStaticMethod=|QTextCodec *|codecForHtml,codecForHtml2|const QByteArray &,QTextCodec *

//[1]static QTextCodec *codecForHtml(const QByteArray &ba)
//[2]static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForHtml1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba)
*/
$internalStaticMethod=|QTextCodec *|codecForUtfText,codecForUtfText1|const QByteArray &

/*
static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/
$internalStaticMethod=|QTextCodec *|codecForUtfText,codecForUtfText2|const QByteArray &,QTextCodec *

//[1]static QTextCodec *codecForUtfText(const QByteArray &ba)
//[2]static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForUtfText1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForUtfText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
