%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusError()
$internalConstructor=|new1|

$prototype=QDBusError(const DBusError *error)
%% TODO: implementar
%% $internalConstructor=|new2|const DBusError *

$prototype=QDBusError(const QDBusMessage& msg)
$internalConstructor=|new3|const QDBusMessage &

$prototype=QDBusError(ErrorType error, const QString &message)
$internalConstructor=|new4|QDBusError::ErrorType,const QString &

$prototype=QDBusError(const QDBusError &other)
$internalConstructor=|new5|const QDBusError &

/*
[1]QDBusError()
[2]QDBusError(const DBusError *error)
[3]QDBusError(const QDBusMessage& msg)
[4]QDBusError(ErrorType error, const QString &message)
[5]QDBusError(const QDBusError &other)
*/

HB_FUNC_STATIC( QDBUSERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusError_new1();
  }
%%  //else if( ISNUMPAR(1) && ISDBUSERROR(1) )
%%  //{
%%  //  QDBusError_new2();
%%  //}
  else if( ISNUMPAR(1) && ISQDBUSMESSAGE(1) )
  {
    QDBusError_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QDBusError_new4();
  }
  else if( ISNUMPAR(1) && ISQDBUSERROR(1) )
  {
    QDBusError_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=ErrorType type() const
$method=|QDBusError::ErrorType|type|

$prototype=QString name() const
$method=|QString|name|

$prototype=QString message() const
$method=|QString|message|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=static QString errorString(ErrorType error)
$staticMethod=|QString|errorString|QDBusError::ErrorType

$extraMethods

#pragma ENDDUMP
