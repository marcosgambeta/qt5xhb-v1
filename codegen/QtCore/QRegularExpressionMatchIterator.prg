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

/*
QRegularExpressionMatchIterator(const QRegularExpressionMatchIterator & iterator)
*/
$constructor=|new|const QRegularExpressionMatchIterator &

$deleteMethod

/*
bool hasNext() const
*/
$method=|bool|hasNext|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QRegularExpression::MatchOptions matchOptions() const
*/
$method=|QRegularExpression::MatchOptions|matchOptions|

/*
QRegularExpression::MatchType matchType() const
*/
$method=|QRegularExpression::MatchType|matchType|

/*
QRegularExpressionMatch next()
*/
$method=|QRegularExpressionMatch|next|

/*
QRegularExpressionMatch peekNext() const
*/
$method=|QRegularExpressionMatch|peekNext|

/*
QRegularExpression regularExpression() const
*/
$method=|QRegularExpression|regularExpression|

/*
void swap(QRegularExpressionMatchIterator & other)
*/
$method=|void|swap|QRegularExpressionMatchIterator &

$extraMethods

#pragma ENDDUMP
