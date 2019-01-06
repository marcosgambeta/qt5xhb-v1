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

$prototype=QRegularExpression()
$internalConstructor=|new1|

$prototype=QRegularExpression(const QString & pattern, PatternOptions options = NoPatternOption)
$internalConstructor=|new2|const QString &,QRegularExpression::PatternOptions=QRegularExpression::NoPatternOption

$prototype=QRegularExpression(const QRegularExpression & re)
$internalConstructor=|new3|const QRegularExpression &

//[1]QRegularExpression()
//[2]QRegularExpression(const QString & pattern, PatternOptions options = NoPatternOption)
//[3]QRegularExpression(const QRegularExpression & re)

HB_FUNC_STATIC( QREGULAREXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegularExpression_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QRegularExpression_new2();
  }
  else if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
  {
    QRegularExpression_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int captureCount() const
$method=|int|captureCount|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QRegularExpressionMatchIterator globalMatch(const QString & subject, int offset = 0, MatchType matchType = NormalMatch, MatchOptions matchOptions = NoMatchOption) const
$method=|QRegularExpressionMatchIterator|globalMatch|const QString &,int=0,QRegularExpression::MatchType=QRegularExpression::NormalMatch,QRegularExpression::MatchOptions=QRegularExpression::NoMatchOption

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QRegularExpressionMatch match(const QString & subject, int offset = 0, MatchType matchType = NormalMatch, MatchOptions matchOptions = NoMatchOption) const
$method=|QRegularExpressionMatch|match|const QString &,int=0,QRegularExpression::MatchType=QRegularExpression::NormalMatch,QRegularExpression::MatchOptions=QRegularExpression::NoMatchOption

$prototype=QString pattern() const
$method=|QString|pattern|

$prototype=int patternErrorOffset() const
$method=|int|patternErrorOffset|

$prototype=PatternOptions patternOptions() const
$method=|QRegularExpression::PatternOptions|patternOptions|

$prototype=void setPattern(const QString & pattern)
$method=|void|setPattern|const QString &

$prototype=void setPatternOptions(PatternOptions options)
$method=|void|setPatternOptions|QRegularExpression::PatternOptions

$prototype=void swap(QRegularExpression & other)
$method=|void|swap|QRegularExpression &

$prototype=static QString escape(const QString & str)
$staticMethod=|QString|escape|const QString &

$prototype=static QString QRegularExpression::anchoredPattern(const QString &expression)
$staticMethod=5,12,0|QString|anchoredPattern|const QString &

$prototype=static QString QRegularExpression::wildcardToRegularExpression(const QString &pattern)
$staticMethod=5,12,0|QString|wildcardToRegularExpression|const QString &

$extraMethods

#pragma ENDDUMP
