%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD fromUnicode
   METHOD hasFailure

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextEncoder(const QTextCodec * codec)
$internalConstructor=|new1|const QTextCodec *

$prototype=QTextEncoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
$internalConstructor=|new2|const QTextCodec *,QTextCodec::ConversionFlags

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

$prototype=QByteArray fromUnicode(const QString & str)
$internalMethod=|QByteArray|fromUnicode,fromUnicode1|const QString &

$prototype=QByteArray fromUnicode(const QChar * uc, int len)
$internalMethod=|QByteArray|fromUnicode,fromUnicode2|const QChar *,int

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

$prototype=bool hasFailure() const
$method=|bool|hasFailure|

$extraMethods

#pragma ENDDUMP
