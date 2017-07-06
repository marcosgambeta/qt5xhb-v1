$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QPLACEMANAGER
#endif

CLASS QPlaceIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD url
   METHOD manager
   METHOD setManager
   METHOD isEmpty

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

/*
QPlaceIcon()
*/
void QPlaceIcon_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * o = new QPlaceIcon ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceIcon(const QPlaceIcon &other)
*/
void QPlaceIcon_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * o = new QPlaceIcon ( *PQPLACEICON(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceIcon()
//[2]QPlaceIcon(const QPlaceIcon &other)

HB_FUNC_STATIC( QPLACEICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceIcon_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEICON(1) )
  {
    QPlaceIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0


/*
QUrl url(const QSize &size = QSize()) const
*/
HB_FUNC_STATIC( QPLACEICON_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize par1 = ISNIL(1)? QSize() : *(QSize *) _qt5xhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->url ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QPlaceManager *manager() const
*/
HB_FUNC_STATIC( QPLACEICON_MANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceManager * ptr = obj->manager ();
    _qt5xhb_createReturnClass ( ptr, "QPLACEMANAGER" );
  }
#endif
}

/*
void setManager(QPlaceManager *manager)
*/
HB_FUNC_STATIC( QPLACEICON_SETMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceManager * par1 = (QPlaceManager *) _qt5xhb_itemGetPtr(1);
    obj->setManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACEICON_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
