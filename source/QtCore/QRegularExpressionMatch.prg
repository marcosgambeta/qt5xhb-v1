/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSTRINGREF
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionMatch

   DATA pointer
   DATA class_id INIT Class_Id_QRegularExpressionMatch
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD captured1
   METHOD captured2
   METHOD captured
   METHOD capturedEnd1
   METHOD capturedEnd2
   METHOD capturedEnd
   METHOD capturedLength1
   METHOD capturedLength2
   METHOD capturedLength
   METHOD capturedRef1
   METHOD capturedRef2
   METHOD capturedRef
   METHOD capturedStart1
   METHOD capturedStart2
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

PROCEDURE destroyObject () CLASS QRegularExpressionMatch
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRegularExpressionMatch>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRegularExpressionMatch>
#endif

/*
QRegularExpressionMatch(const QRegularExpressionMatch & match)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEW )
{
  QRegularExpressionMatch * par1 = (QRegularExpressionMatch *) _qt5xhb_itemGetPtr(1);
  QRegularExpressionMatch * o = new QRegularExpressionMatch ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegularExpressionMatch *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_DELETE )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString captured(int nth = 0) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTURED1 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->captured ( (int) ISNIL(1)? 0 : hb_parni(1) ).toLatin1().data() );
  }
}


/*
QString captured(const QString & name) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTURED2 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->captured ( par1 ).toLatin1().data() );
  }
}


//[1]QString captured(int nth = 0) const
//[2]QString captured(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTURED )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTURED1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTURED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int capturedEnd(int nth = 0) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDEND1 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capturedEnd ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
  }
}


/*
int capturedEnd(const QString & name) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDEND2 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->capturedEnd ( par1 ) );
  }
}


//[1]int capturedEnd(int nth = 0) const
//[2]int capturedEnd(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDEND )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDEND1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDEND2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int capturedLength(int nth = 0) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH1 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capturedLength ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
  }
}


/*
int capturedLength(const QString & name) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH2 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->capturedLength ( par1 ) );
  }
}


//[1]int capturedLength(int nth = 0) const
//[2]int capturedLength(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringRef capturedRef(int nth = 0) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDREF1 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->capturedRef ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef capturedRef(const QString & name) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDREF2 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringRef * ptr = new QStringRef( obj->capturedRef ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


//[1]QStringRef capturedRef(int nth = 0) const
//[2]QStringRef capturedRef(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDREF )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDREF1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDREF2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int capturedStart(int nth = 0) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART1 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capturedStart ( (int) ISNIL(1)? 0 : hb_parni(1) ) );
  }
}


/*
int capturedStart(const QString & name) const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART2 )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->capturedStart ( par1 ) );
  }
}


//[1]int capturedStart(int nth = 0) const
//[2]int capturedStart(const QString & name) const

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList capturedTexts() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDTEXTS )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->capturedTexts (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
bool hasMatch() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_HASMATCH )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasMatch (  ) );
  }
}


/*
bool hasPartialMatch() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_HASPARTIALMATCH )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasPartialMatch (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_ISVALID )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int lastCapturedIndex() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_LASTCAPTUREDINDEX )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lastCapturedIndex (  ) );
  }
}


/*
QRegularExpression::MatchOptions matchOptions() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_MATCHOPTIONS )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->matchOptions (  ) );
  }
}


/*
QRegularExpression::MatchType matchType() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_MATCHTYPE )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->matchType (  ) );
  }
}


/*
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_REGULAREXPRESSION )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegularExpression * ptr = new QRegularExpression( obj->regularExpression (  ) );
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
    QRegularExpressionMatch * par1 = (QRegularExpressionMatch *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEWFROM )
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

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_SETSELFDESTRUCTION )
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