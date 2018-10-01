%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=bool canEncode(QChar) const
$internalMethod=|bool|canEncode,canEncode1|QChar

$prototype=bool canEncode(const QString&) const
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
$addMethod=canEncode

$prototype=QString toUnicode(const QByteArray&) const
$internalMethod=|QString|toUnicode,toUnicode1|const QByteArray &

$prototype=QString toUnicode(const char* chars) const
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
$addMethod=toUnicode

$prototype=QByteArray fromUnicode(const QString& uc) const
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
$addMethod=fromUnicode

$prototype=QTextDecoder* makeDecoder(ConversionFlags flags = DefaultConversion) const
$method=|QTextDecoder *|makeDecoder|QTextCodec::ConversionFlags=QTextCodec::DefaultConversion

$prototype=QTextEncoder* makeEncoder(ConversionFlags flags = DefaultConversion) const
$method=|QTextEncoder *|makeEncoder|QTextCodec::ConversionFlags=QTextCodec::DefaultConversion

$prototype=virtual QByteArray name() const = 0
$virtualMethod=|QByteArray|name|

$prototype=virtual QList<QByteArray> aliases() const
$virtualMethod=|QList<QByteArray>|aliases|

$prototype=virtual int mibEnum() const = 0
$virtualMethod=|int|mibEnum|

$prototype=static QTextCodec* codecForName(const QByteArray &name)
$internalStaticMethod=|QTextCodec *|codecForName,codecForName1|const QByteArray &

$prototype=static QTextCodec* codecForName(const char *name)
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
$addMethod=codecForName

$prototype=static QTextCodec* codecForMib(int mib)
$staticMethod=|QTextCodec *|codecForMib|int

$prototype=static QList<QByteArray> availableCodecs()
$staticMethod=|QList<QByteArray>|availableCodecs|

$prototype=static QList<int> availableMibs()
$staticMethod=|QList<int>|availableMibs|

$prototype=static QTextCodec* codecForLocale()
$staticMethod=|QTextCodec *|codecForLocale|

$prototype=static void setCodecForLocale(QTextCodec *c)
$staticMethod=|void|setCodecForLocale|QTextCodec *

$prototype=static QTextCodec *codecForHtml(const QByteArray &ba)
$internalStaticMethod=|QTextCodec *|codecForHtml,codecForHtml1|const QByteArray &

$prototype=static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
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
$addMethod=codecForHtml

$prototype=static QTextCodec *codecForUtfText(const QByteArray &ba)
$internalStaticMethod=|QTextCodec *|codecForUtfText,codecForUtfText1|const QByteArray &

$prototype=static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
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
$addMethod=codecForUtfText

$extraMethods

#pragma ENDDUMP
