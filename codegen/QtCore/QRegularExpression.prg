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
void QRegularExpression_new1 ()
{
  QRegularExpression * o = new QRegularExpression ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegularExpression(const QString & pattern, PatternOptions options = NoPatternOption)
*/
void QRegularExpression_new2 ()
{
  int par2 = ISNIL(2)? (int) QRegularExpression::NoPatternOption : hb_parni(2);
  QRegularExpression * o = new QRegularExpression ( PQSTRING(1), (QRegularExpression::PatternOptions) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegularExpression(const QRegularExpression & re)
*/
void QRegularExpression_new3 ()
{
  QRegularExpression * o = new QRegularExpression ( *PQREGULAREXPRESSION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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
HB_FUNC_STATIC( QREGULAREXPRESSION_CAPTURECOUNT )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->captureCount () );
  }
}

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
QRegularExpressionMatchIterator globalMatch(const QString & subject, int offset = 0, MatchType matchType = NormalMatch, MatchOptions matchOptions = NoMatchOption) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_GLOBALMATCH )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      int par3 = ISNIL(3)? (int) QRegularExpression::NormalMatch : hb_parni(3);
      int par4 = ISNIL(4)? (int) QRegularExpression::NoMatchOption : hb_parni(4);
      QRegularExpressionMatchIterator * ptr = new QRegularExpressionMatchIterator( obj->globalMatch ( PQSTRING(1), OPINT(2,0), (QRegularExpression::MatchType) par3, (QRegularExpression::MatchOptions) par4 ) );
      _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSIONMATCHITERATOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QRegularExpressionMatch match(const QString & subject, int offset = 0, MatchType matchType = NormalMatch, MatchOptions matchOptions = NoMatchOption) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_MATCH )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      int par3 = ISNIL(3)? (int) QRegularExpression::NormalMatch : hb_parni(3);
      int par4 = ISNIL(4)? (int) QRegularExpression::NoMatchOption : hb_parni(4);
      QRegularExpressionMatch * ptr = new QRegularExpressionMatch( obj->match ( PQSTRING(1), OPINT(2,0), (QRegularExpression::MatchType) par3, (QRegularExpression::MatchOptions) par4 ) );
      _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSIONMATCH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

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
HB_FUNC_STATIC( QREGULAREXPRESSION_PATTERNOPTIONS )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->patternOptions () );
  }
}

/*
void setPattern(const QString & pattern)
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_SETPATTERN )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setPattern ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPatternOptions(PatternOptions options)
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_SETPATTERNOPTIONS )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setPatternOptions ( (QRegularExpression::PatternOptions) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swap(QRegularExpression & other)
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_SWAP )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQREGULAREXPRESSION(1) )
    {
      QRegularExpression * par1 = (QRegularExpression *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString escape(const QString & str)
*/
$staticMethod=|QString|escape|const QString &

$extraMethods

#pragma ENDDUMP
