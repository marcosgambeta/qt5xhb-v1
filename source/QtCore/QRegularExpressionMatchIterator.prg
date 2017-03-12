/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSIONMATCH
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionMatchIterator

   DATA pointer
   DATA class_id INIT Class_Id_QRegularExpressionMatchIterator
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QRegularExpressionMatchIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRegularExpressionMatchIterator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegularExpressionMatchIterator>
#endif

/*
QRegularExpressionMatchIterator(const QRegularExpressionMatchIterator & iterator)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEW )
{
  QRegularExpressionMatchIterator * par1 = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtr(1);
  QRegularExpressionMatchIterator * o = new QRegularExpressionMatchIterator ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegularExpressionMatchIterator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_DELETE )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool hasNext() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_HASNEXT )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasNext (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_ISVALID )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QRegularExpression::MatchOptions matchOptions() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_MATCHOPTIONS )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->matchOptions (  ) );
  }
}


/*
QRegularExpression::MatchType matchType() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_MATCHTYPE )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->matchType (  ) );
  }
}


/*
QRegularExpressionMatch next()
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEXT )
{
  QRegularExpressionMatchIterator * obj = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpressionMatch * ptr = new QRegularExpressionMatch( obj->next (  ) );
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
    QRegularExpressionMatch * ptr = new QRegularExpressionMatch( obj->peekNext (  ) );
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
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression (  ) );
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
    QRegularExpressionMatchIterator * par1 = (QRegularExpressionMatchIterator *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEWFROM )
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

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGULAREXPRESSIONMATCHITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGULAREXPRESSIONMATCHITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCHITERATOR_SETSELFDESTRUCTION )
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
