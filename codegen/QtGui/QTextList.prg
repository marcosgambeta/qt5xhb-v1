%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextBlockGroup

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextList(QTextDocument *doc)
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=int count() const
$method=|int|count|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QTextBlock item(int i) const
$method=|QTextBlock|item|int

$prototype=int itemNumber(const QTextBlock &) const
$method=|int|itemNumber|const QTextBlock &

$prototype=QString itemText(const QTextBlock &) const
$method=|QString|itemText|const QTextBlock &

$prototype=void removeItem(int i)
$method=|void|removeItem|int

$prototype=void remove(const QTextBlock &)
$method=|void|remove|const QTextBlock &

$prototype=void add(const QTextBlock &block)
$method=|void|add|const QTextBlock &

$prototype=void setFormat(const QTextListFormat &format)
$method=|void|setFormat|const QTextListFormat &

$prototype=QTextListFormat format() const
$method=|QTextListFormat|format|

#pragma ENDDUMP
