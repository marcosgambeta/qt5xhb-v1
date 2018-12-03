%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWinExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinJumpListItem(Type type)
$constructor=5,2,0|new|QWinJumpListItem::Type

$deleteMethod=5,2,0

$prototype=Type type() const
$method=5,2,0|QWinJumpListItem::Type|type|

$prototype=void setType(Type type)
$method=5,2,0|void|setType|QWinJumpListItem::Type

$prototype=QString filePath() const
$method=5,2,0|QString|filePath|

$prototype=void setFilePath(const QString &filePath)
$method=5,2,0|void|setFilePath|const QString &

$prototype=QString workingDirectory() const
$method=5,2,0|QString|workingDirectory|

$prototype=void setWorkingDirectory(const QString &workingDirectory)
$method=5,2,0|void|setWorkingDirectory|const QString &

$prototype=QIcon icon() const
$method=5,2,0|QIcon|icon|

$prototype=void setIcon(const QIcon &icon)
$method=5,2,0|void|setIcon|const QIcon &

$prototype=QString title() const
$method=5,2,0|QString|title|

$prototype=void setTitle(const QString &title)
$method=5,2,0|void|setTitle|const QString &

$prototype=QString description() const
$method=5,2,0|QString|description|

$prototype=void setDescription(const QString &description)
$method=5,2,0|void|setDescription|const QString &

$prototype=QStringList arguments() const
$method=5,2,0|QStringList|arguments|

$prototype=void setArguments(const QStringList &arguments)
$method=5,2,0|void|setArguments|const QStringList &

$extraMethods

#pragma ENDDUMP
