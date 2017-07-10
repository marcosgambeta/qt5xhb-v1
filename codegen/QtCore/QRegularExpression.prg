$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSIONMATCHITERATOR
REQUEST QREGULAREXPRESSIONMATCH
#endif

CLASS QRegularExpression

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD captureCount
   METHOD errorString
   METHOD globalMatch
   METHOD isValid
   METHOD match
   METHOD pattern
   METHOD patternErrorOffset
   METHOD patternOptions
   METHOD setPattern
   METHOD setPatternOptions
   METHOD swap
   METHOD escape

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
QRegularExpression()
*/
$internalConstructor=|new1|

/*
QRegularExpression(const QString & pattern, PatternOptions options = NoPatternOption)
*/
$internalConstructor=|new2|const QString &,QRegularExpression::PatternOptions=QRegularExpression::NoPatternOption

/*
QRegularExpression(const QRegularExpression & re)
*/
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

/*
int captureCount() const
*/
$method=|int|captureCount|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
QRegularExpressionMatchIterator globalMatch(const QString & subject, int offset = 0, MatchType matchType = NormalMatch, MatchOptions matchOptions = NoMatchOption) const
*/
$method=|QRegularExpressionMatchIterator|globalMatch|const QString &,int=0,QRegularExpression::MatchType=QRegularExpression::NormalMatch,QRegularExpression::MatchOptions=QRegularExpression::NoMatchOption

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QRegularExpressionMatch match(const QString & subject, int offset = 0, MatchType matchType = NormalMatch, MatchOptions matchOptions = NoMatchOption) const
*/
$method=|QRegularExpressionMatch|match|const QString &,int=0,QRegularExpression::MatchType=QRegularExpression::NormalMatch,QRegularExpression::MatchOptions=QRegularExpression::NoMatchOption

/*
QString pattern() const
*/
$method=|QString|pattern|

/*
int patternErrorOffset() const
*/
$method=|int|patternErrorOffset|

/*
PatternOptions patternOptions() const
*/
$method=|QRegularExpression::PatternOptions|patternOptions|

/*
void setPattern(const QString & pattern)
*/
$method=|void|setPattern|const QString &

/*
void setPatternOptions(PatternOptions options)
*/
$method=|void|setPatternOptions|QRegularExpression::PatternOptions

/*
void swap(QRegularExpression & other)
*/
$method=|void|swap|QRegularExpression &

/*
static QString escape(const QString & str)
*/
$staticMethod=|QString|escape|const QString &

$extraMethods

#pragma ENDDUMP
