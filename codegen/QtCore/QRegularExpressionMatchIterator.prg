%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QRegularExpressionMatchIterator(const QRegularExpressionMatchIterator & iterator)
$constructor=|new|const QRegularExpressionMatchIterator &

$deleteMethod

$prototype=bool hasNext() const
$method=|bool|hasNext|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QRegularExpression::MatchOptions matchOptions() const
$method=|QRegularExpression::MatchOptions|matchOptions|

$prototype=QRegularExpression::MatchType matchType() const
$method=|QRegularExpression::MatchType|matchType|

$prototype=QRegularExpressionMatch next()
$method=|QRegularExpressionMatch|next|

$prototype=QRegularExpressionMatch peekNext() const
$method=|QRegularExpressionMatch|peekNext|

$prototype=QRegularExpression regularExpression() const
$method=|QRegularExpression|regularExpression|

$prototype=void swap(QRegularExpressionMatchIterator & other)
$method=|void|swap|QRegularExpressionMatchIterator &

$extraMethods

#pragma ENDDUMP
