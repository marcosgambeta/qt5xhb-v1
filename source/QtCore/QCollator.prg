/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QCOLLATORSORTKEY
#endif

CLASS QCollator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setLocale
   METHOD locale
   METHOD caseSensitivity
   METHOD setCaseSensitivity
   METHOD setNumericMode
   METHOD numericMode
   METHOD setIgnorePunctuation
   METHOD ignorePunctuation
   METHOD sortKey

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCollator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QCollator>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QCollator>
#endif
#endif

/*
QCollator(const QLocale &locale = QLocale())
*/
void QCollator_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QLocale par1 = ISNIL(1)? QLocale() : *(QLocale *) _qt5xhb_itemGetPtr(1);
  QCollator * o = new QCollator ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QCollator(const QCollator &)
*/
void QCollator_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * o = new QCollator ( *PQCOLLATOR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

//[1]QCollator(const QLocale &locale = QLocale())
//[2]QCollator(const QCollator &)

HB_FUNC_STATIC( QCOLLATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLOCALE(1)||ISNIL(1)) )
  {
    QCollator_new1();
  }
  else if( ISNUMPAR(1) && ISQCOLLATOR(1) )
  {
    QCollator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLLATOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void swap(QCollator &other)
*/
HB_FUNC_STATIC( QCOLLATOR_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOLLATOR(1) )
    {
      QCollator * par1 = (QCollator *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QCOLLATOR_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQLOCALE(1) )
    {
      obj->setLocale ( *PQLOCALE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QCOLLATOR_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
#endif
}

/*
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC( QCOLLATOR_CASESENSITIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->caseSensitivity () );
  }
#endif
}

/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QCOLLATOR_SETCASESENSITIVITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCaseSensitivity ( (Qt::CaseSensitivity) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setNumericMode(bool on)
*/
HB_FUNC_STATIC( QCOLLATOR_SETNUMERICMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setNumericMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool numericMode() const
*/
HB_FUNC_STATIC( QCOLLATOR_NUMERICMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->numericMode () );
  }
#endif
}

/*
void setIgnorePunctuation(bool on)
*/
HB_FUNC_STATIC( QCOLLATOR_SETIGNOREPUNCTUATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setIgnorePunctuation ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool ignorePunctuation() const
*/
HB_FUNC_STATIC( QCOLLATOR_IGNOREPUNCTUATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->ignorePunctuation () );
  }
#endif
}

/*
QCollatorSortKey sortKey(const QString &string) const
*/
HB_FUNC_STATIC( QCOLLATOR_SORTKEY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QCollatorSortKey * ptr = new QCollatorSortKey( obj->sortKey ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QCOLLATORSORTKEY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

HB_FUNC_STATIC( QCOLLATOR_NEWFROM )
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

HB_FUNC_STATIC( QCOLLATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOLLATOR_NEWFROM );
}

HB_FUNC_STATIC( QCOLLATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOLLATOR_NEWFROM );
}

HB_FUNC_STATIC( QCOLLATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOLLATOR_SETSELFDESTRUCTION )
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
