$header

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

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

$deleteMethod=5,4,0

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
    RQSTRING( obj->title () );
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



$extraMethods

#pragma ENDDUMP
