$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionMatch

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD captured
   METHOD capturedEnd
   METHOD capturedLength
   METHOD capturedRef
   METHOD capturedStart
   METHOD capturedTexts
   METHOD hasMatch
   METHOD hasPartialMatch
   METHOD isValid
   METHOD lastCapturedIndex
   METHOD matchOptions
   METHOD matchType
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
QRegularExpressionMatch(const QRegularExpressionMatch & match)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEW )
{
  if( ISNUMPAR(1) && ISQREGULAREXPRESSIONMATCH(1) )
  {
    QRegularExpressionMatch * o = new QRegularExpressionMatch ( *PQREGULAREXPRESSIONMATCH(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString captured(int nth = 0) const
*/
void QRegularExpressionMatch_captured1 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->captured ( OPINT(1,0) ) );
  }
}

/*
QString captured(const QString & name) const
*/
void QRegularExpressionMatch_captured2 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->captured ( PQSTRING(1) ) );
  }
}

//[1]QString captured(int nth = 0) const
//[2]QString captured(const QString & name) const

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

/*
int capturedEnd(int nth = 0) const
*/
void QRegularExpressionMatch_capturedEnd1 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->capturedEnd ( OPINT(1,0) ) );
  }
}

/*
int capturedEnd(const QString & name) const
*/
void QRegularExpressionMatch_capturedEnd2 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->capturedEnd ( PQSTRING(1) ) );
  }
}

//[1]int capturedEnd(int nth = 0) const
//[2]int capturedEnd(const QString & name) const

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

/*
int capturedLength(int nth = 0) const
*/
void QRegularExpressionMatch_capturedLength1 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->capturedLength ( OPINT(1,0) ) );
  }
}

/*
int capturedLength(const QString & name) const
*/
void QRegularExpressionMatch_capturedLength2 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->capturedLength ( PQSTRING(1) ) );
  }
}

//[1]int capturedLength(int nth = 0) const
//[2]int capturedLength(const QString & name) const

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

/*
QStringRef capturedRef(int nth = 0) const
*/
void QRegularExpressionMatch_capturedRef1 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->capturedRef ( OPINT(1,0) ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef capturedRef(const QString & name) const
*/
void QRegularExpressionMatch_capturedRef2 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->capturedRef ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

//[1]QStringRef capturedRef(int nth = 0) const
//[2]QStringRef capturedRef(const QString & name) const

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

/*
int capturedStart(int nth = 0) const
*/
void QRegularExpressionMatch_capturedStart1 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->capturedStart ( OPINT(1,0) ) );
  }
}

/*
int capturedStart(const QString & name) const
*/
void QRegularExpressionMatch_capturedStart2 ()
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->capturedStart ( PQSTRING(1) ) );
  }
}

//[1]int capturedStart(int nth = 0) const
//[2]int capturedStart(const QString & name) const

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

/*
QStringList capturedTexts() const
*/
$method=|QStringList|capturedTexts|

/*
bool hasMatch() const
*/
$method=|bool|hasMatch|

/*
bool hasPartialMatch() const
*/
$method=|bool|hasPartialMatch|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
int lastCapturedIndex() const
*/
$method=|int|lastCapturedIndex|

/*
QRegularExpression::MatchOptions matchOptions() const
*/
$method=|QRegularExpression::MatchOptions|matchOptions|

/*
QRegularExpression::MatchType matchType() const
*/
$method=|QRegularExpression::MatchType|matchType|

/*
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_REGULAREXPRESSION )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
}

/*
void swap(QRegularExpressionMatch & other)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_SWAP )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQREGULAREXPRESSIONMATCH(1) )
    {
      QRegularExpressionMatch * par1 = (QRegularExpressionMatch *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
