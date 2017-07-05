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
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEW )
{
  if( ISNUMPAR(1) && ISQREGULAREXPRESSIONMATCHITERATOR(1) )
  {
    QRegularExpressionMatchIterator * o = new QRegularExpressionMatchIterator ( *PQREGULAREXPRESSIONMATCHITERATOR(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEXT )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegularExpressionMatch * ptr = new QRegularExpressionMatch( obj->next () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSIONMATCH", true );
  }
}

/*
QRegularExpressionMatch peekNext() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_PEEKNEXT )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegularExpressionMatch * ptr = new QRegularExpressionMatch( obj->peekNext () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSIONMATCH", true );
  }
}

/*
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_REGULAREXPRESSION )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression () );
    _qt5xhb_createReturnClass ( ptr, "QREGULAREXPRESSION", true );
  }
}

/*
void swap(QRegularExpressionMatchIterator & other)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_SWAP )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQREGULAREXPRESSIONMATCHITERATOR(1) )
    {
      QRegularExpressionMatchIterator * par1 = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtr(1);
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
