/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceProposedSearchResult INHERIT QPlaceSearchResult

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD searchRequest
   METHOD setSearchRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceProposedSearchResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceProposedSearchResult>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceProposedSearchResult>
#endif
#endif

#include <QPlaceSearchRequest>

/*
QPlaceProposedSearchResult()
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * o = new QPlaceProposedSearchResult (  );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * obj = (QPlaceProposedSearchResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPlaceSearchRequest searchRequest() const
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_SEARCHREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * obj = (QPlaceProposedSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->searchRequest (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}

/*
void setSearchRequest(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEPROPOSEDSEARCHRESULT_SETSEARCHREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceProposedSearchResult * obj = (QPlaceProposedSearchResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * par1 = (QPlaceSearchRequest *) _qt5xhb_itemGetPtr(1);
    obj->setSearchRequest ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
