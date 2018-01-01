%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSIONMATCH
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionMatchIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hasNext
   METHOD isValid
   METHOD matchOptions
   METHOD matchType
   METHOD next
   METHOD peekNext
   METHOD regularExpression
   METHOD swap

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
