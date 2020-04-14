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

$prototype=QRegularExpressionMatch(const QRegularExpressionMatch & match)
$constructor=|new|const QRegularExpressionMatch &

$deleteMethod

$prototype=QString captured(int nth = 0) const
$internalMethod=|QString|captured,captured1|int=0

$prototype=QString captured(const QString & name) const
$internalMethod=|QString|captured,captured2|const QString &

/*
[1]QString captured(int nth = 0) const
[2]QString captured(const QString & name) const
*/

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTURED )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_captured1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_captured2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=captured

$prototype=int capturedEnd(int nth = 0) const
$internalMethod=|int|capturedEnd,capturedEnd1|int=0

$prototype=int capturedEnd(const QString & name) const
$internalMethod=|int|capturedEnd,capturedEnd2|const QString &

/*
[1]int capturedEnd(int nth = 0) const
[2]int capturedEnd(const QString & name) const
*/

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDEND )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedEnd1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedEnd2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=capturedEnd

$prototype=int capturedLength(int nth = 0) const
$internalMethod=|int|capturedLength,capturedLength1|int=0

$prototype=int capturedLength(const QString & name) const
$internalMethod=|int|capturedLength,capturedLength2|const QString &

/*
[1]int capturedLength(int nth = 0) const
[2]int capturedLength(const QString & name) const
*/

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedLength1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedLength2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=capturedLength

$prototype=QStringRef capturedRef(int nth = 0) const
$internalMethod=|QStringRef|capturedRef,capturedRef1|int=0

$prototype=QStringRef capturedRef(const QString & name) const
$internalMethod=|QStringRef|capturedRef,capturedRef2|const QString &

/*
[1]QStringRef capturedRef(int nth = 0) const
[2]QStringRef capturedRef(const QString & name) const
*/

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDREF )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedRef1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedRef2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=capturedRef

$prototype=int capturedStart(int nth = 0) const
$internalMethod=|int|capturedStart,capturedStart1|int=0

$prototype=int capturedStart(const QString & name) const
$internalMethod=|int|capturedStart,capturedStart2|const QString &

/*
[1]int capturedStart(int nth = 0) const
[2]int capturedStart(const QString & name) const
*/

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QRegularExpressionMatch_capturedStart1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QRegularExpressionMatch_capturedStart2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=capturedStart

$prototype=QStringList capturedTexts() const
$method=|QStringList|capturedTexts|

$prototype=bool hasMatch() const
$method=|bool|hasMatch|

$prototype=bool hasPartialMatch() const
$method=|bool|hasPartialMatch|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int lastCapturedIndex() const
$method=|int|lastCapturedIndex|

$prototype=QRegularExpression::MatchOptions matchOptions() const
$method=|QRegularExpression::MatchOptions|matchOptions|

$prototype=QRegularExpression::MatchType matchType() const
$method=|QRegularExpression::MatchType|matchType|

$prototype=QRegularExpression regularExpression() const
$method=|QRegularExpression|regularExpression|

$prototype=void swap(QRegularExpressionMatch & other)
$method=|void|swap|QRegularExpressionMatch &

$extraMethods

#pragma ENDDUMP
