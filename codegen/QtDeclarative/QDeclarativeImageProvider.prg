$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QDeclarativeImageProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD imageType
   METHOD requestImage
   METHOD requestPixmap

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
QDeclarativeImageProvider ( ImageType type )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDeclarativeImageProvider * o = new QDeclarativeImageProvider ( (QDeclarativeImageProvider::ImageType) hb_parni(1) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
ImageType imageType () const
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_IMAGETYPE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->imageType () );
  }
}

/*
virtual QImage requestImage ( const QString & id, QSize * size, const QSize & requestedSize )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_REQUESTIMAGE )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
      QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
      QImage * ptr = new QImage( obj->requestImage ( PQSTRING(1), par2, *PQSIZE(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPixmap requestPixmap ( const QString & id, QSize * size, const QSize & requestedSize )
*/
HB_FUNC_STATIC( QDECLARATIVEIMAGEPROVIDER_REQUESTPIXMAP )
{
  QDeclarativeImageProvider * obj = (QDeclarativeImageProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQSIZE(2) && ISQSIZE(3) )
    {
      QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
      QPixmap * ptr = new QPixmap( obj->requestPixmap ( PQSTRING(1), par2, *PQSIZE(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
