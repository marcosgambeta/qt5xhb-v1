/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEICON
#endif

CLASS QPlaceSearchResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD title
   METHOD setTitle
   METHOD icon
   METHOD setIcon

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceSearchResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchResult>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchResult>
#endif
#endif

#include <QPlaceIcon>

/*
QPlaceSearchResult()
*/
void QPlaceSearchResult_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * o = new QPlaceSearchResult ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceSearchResult(const QPlaceSearchResult &other)
*/
void QPlaceSearchResult_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * o = new QPlaceSearchResult ( *PQPLACESEARCHRESULT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceSearchResult()
//[2]QPlaceSearchResult(const QPlaceSearchResult &other)

HB_FUNC_STATIC( QPLACESEARCHRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchResult_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHRESULT(1) )
  {
    QPlaceSearchResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACESEARCHRESULT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * obj = (QPlaceSearchResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
SearchResultType type() const
*/
HB_FUNC_STATIC( QPLACESEARCHRESULT_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * obj = (QPlaceSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QPLACESEARCHRESULT_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * obj = (QPlaceSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->title () ) );
  }
#endif
}

/*
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QPLACESEARCHRESULT_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * obj = (QPlaceSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceIcon icon() const
*/
HB_FUNC_STATIC( QPLACESEARCHRESULT_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * obj = (QPlaceSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * ptr = new QPlaceIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QPLACEICON", true );
  }
#endif
}

/*
void setIcon(const QPlaceIcon &icon)
*/
HB_FUNC_STATIC( QPLACESEARCHRESULT_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchResult * obj = (QPlaceSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIcon ( *PQPLACEICON(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QPLACESEARCHRESULT_NEWFROM )
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

HB_FUNC_STATIC( QPLACESEARCHRESULT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACESEARCHRESULT_NEWFROM );
}

HB_FUNC_STATIC( QPLACESEARCHRESULT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACESEARCHRESULT_NEWFROM );
}

HB_FUNC_STATIC( QPLACESEARCHRESULT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACESEARCHRESULT_SETSELFDESTRUCTION )
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
