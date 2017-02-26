/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QStringMatcher

   DATA pointer
   DATA class_id INIT Class_Id_QStringMatcher
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn1
   METHOD indexIn2
   METHOD indexIn
   METHOD pattern
   METHOD caseSensitivity
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStringMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStringMatcher>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStringMatcher>
#endif
#endif

/*
QStringMatcher()
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStringMatcher * o = new QStringMatcher (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStringMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  QStringMatcher * o = new QStringMatcher ( par1,  (Qt::CaseSensitivity) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStringMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  const QChar * par1 = (const QChar *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) Qt::CaseSensitive : hb_parni(3);
  QStringMatcher * o = new QStringMatcher ( par1, par2,  (Qt::CaseSensitivity) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStringMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QStringMatcher(const QStringMatcher &other)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStringMatcher * par1 = (QStringMatcher *) _qtxhb_itemGetPtr(1);
  QStringMatcher * o = new QStringMatcher ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStringMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//QStringMatcher()
//QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QStringMatcher &other)

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTRINGMATCHER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
void setPattern(const QString &pattern)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETPATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPattern ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETCASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaseSensitivity (  (Qt::CaseSensitivity) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexIn(const QString &str, int from = 0) const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN1 )
{
  QStringMatcher * obj = (QStringMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->indexIn ( par1, (int) ISNIL(2)? 0 : hb_parni(2) ) );
  }
}


/*
int indexIn(const QChar *str, int length, int from = 0) const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN2 )
{
  QStringMatcher * obj = (QStringMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QChar * par1 = (const QChar *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->indexIn ( par1, (int) hb_parni(2), (int) hb_parni(3) ) );
  }
}


//[1]int indexIn(const QString &str, int from = 0) const
//[2]int indexIn(const QChar *str, int length, int from = 0) const

HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_INDEXIN1 );
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_INDEXIN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString pattern() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_PATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->pattern (  ).toLatin1().data() );
  }
}


/*
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_CASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->caseSensitivity (  ) );
  }
}



HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROM )
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

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SETSELFDESTRUCTION )
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