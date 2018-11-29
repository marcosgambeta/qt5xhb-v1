%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIODevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=FileError error() const
$method=|QFileDevice::FileError|error|

$prototype=virtual QString fileName() const
$virtualMethod=|QString|fileName|

$prototype=bool flush()
$method=|bool|flush|

$prototype=int handle() const
$method=|int|handle|

$prototype=virtual Permissions permissions() const
$virtualMethod=|QFileDevice::Permissions|permissions|

$prototype=virtual bool resize(qint64 sz)
$virtualMethod=|bool|resize|qint64

$prototype=virtual bool setPermissions(Permissions permissions)
$virtualMethod=|bool|setPermissions|QFileDevice::Permissions

$prototype=void unsetError()
$method=|void|unsetError|

$prototype=virtual bool atEnd() const
$virtualMethod=|bool|atEnd|

$prototype=virtual void close()
$virtualMethod=|void|close|

$prototype=virtual bool isSequential() const
$virtualMethod=|bool|isSequential|

$prototype=virtual qint64 pos() const
$virtualMethod=|qint64|pos|

$prototype=virtual bool seek(qint64 pos)
$virtualMethod=|bool|seek|qint64

$prototype=virtual qint64 size() const
$virtualMethod=|qint64|size|

#pragma ENDDUMP
