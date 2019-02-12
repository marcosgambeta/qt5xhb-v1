%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QtDBus/QDBusConnection>

$prototype=QDBusContext()
$constructor=|new|

$deleteMethod

$prototype=bool calledFromDBus() const
$method=|bool|calledFromDBus|

$prototype=QDBusConnection connection() const
$method=|QDBusConnection|connection|

$prototype=const QDBusMessage &message() const
$method=|const QDBusMessage &|message|

$prototype=bool isDelayedReply() const
$method=|bool|isDelayedReply|

$prototype=void setDelayedReply(bool enable) const
$method=|void|setDelayedReply|bool

$prototype=void sendErrorReply(const QString &name, const QString &msg = QString()) const
$internalMethod=|void|sendErrorReply,sendErrorReply1|const QString &,const QString &=QString()

$prototype=void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const
$internalMethod=|void|sendErrorReply,sendErrorReply2|QDBusError::ErrorType,const QString &=QString()

//[1]void sendErrorReply(const QString &name, const QString &msg = QString()) const
//[2]void sendErrorReply(QDBusError::ErrorType type, const QString &msg = QString()) const

HB_FUNC_STATIC( QDBUSCONTEXT_SENDERRORREPLY )
{
  // TODO: implementar
}
$addMethod=sendErrorReply

$extraMethods

#pragma ENDDUMP
