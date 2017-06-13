/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QRegularExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRegularExpression>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegularExpression>
#endif

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

HB_FUNC_STATIC( QREGULAREXPRESSION_DELETE )
{
  QRegularExpression * obj = (QRegularExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int captureCount() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_CAPTURECOUNT )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->captureCount () );
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_ERRORSTRING )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
}

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
HB_FUNC_STATIC( QREGULAREXPRESSION_ISVALID )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

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
HB_FUNC_STATIC( QREGULAREXPRESSION_PATTERN )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->pattern () ) );
  }
}

/*
int patternErrorOffset() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSION_PATTERNERROROFFSET )
{
  QRegularExpression * obj = (QRegularExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->patternErrorOffset () );
  }
}

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
HB_FUNC_STATIC( QREGULAREXPRESSION_ESCAPE )
{
  if( ISCHAR(1) )
  {
    hb_retc( RQSTRING( QRegularExpression::escape ( PQSTRING(1) ) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QREGULAREXPRESSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGULAREXPRESSION_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGULAREXPRESSION_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGULAREXPRESSION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
