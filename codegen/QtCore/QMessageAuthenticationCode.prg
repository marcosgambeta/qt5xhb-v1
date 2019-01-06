%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMessageAuthenticationCode(QCryptographicHash::Algorithm method,const QByteArray &key = QByteArray())
$constructor=|new|QCryptographicHash::Algorithm,const QByteArray &=QByteArray()

$deleteMethod

$prototype=void reset()
$method=|void|reset|

$prototype=void setKey(const QByteArray &key)
$method=|void|setKey|const QByteArray &

$prototype=void addData(const char *data, int length)
$internalMethod=|void|addData,addData1|const char *,int

$prototype=void addData(const QByteArray &data)
$internalMethod=|void|addData,addData2|const QByteArray &

$prototype=bool addData(QIODevice *device)
$internalMethod=|bool|addData,addData3|QIODevice *

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
$addMethod=addData

$prototype=QByteArray result() const
$method=|QByteArray|result|

$prototype=static QByteArray hash(const QByteArray &message, const QByteArray &key,QCryptographicHash::Algorithm method)
$staticMethod=|QByteArray|hash|const QByteArray &,const QByteArray &,QCryptographicHash::Algorithm

$extraMethods

#pragma ENDDUMP
