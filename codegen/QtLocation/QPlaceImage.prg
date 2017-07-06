$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QPlaceImage INHERIT QPlaceContent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD url
   METHOD setUrl
   METHOD imageId
   METHOD setImageId
   METHOD mimeType
   METHOD setMimeType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceImage()
*/
void QPlaceImage_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * o = new QPlaceImage ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceImage(const QPlaceContent &other)
*/
void QPlaceImage_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * o = new QPlaceImage ( *PQPLACECONTENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceImage()
//[2]QPlaceImage(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACEIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceImage_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceImage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QUrl url() const
*/
HB_FUNC_STATIC( QPLACEIMAGE_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}

/*
void setUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QPLACEIMAGE_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString imageId() const
*/
HB_FUNC_STATIC( QPLACEIMAGE_IMAGEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->imageId () );
  }
#endif
}

/*
void setImageId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACEIMAGE_SETIMAGEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImageId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString mimeType() const
*/
HB_FUNC_STATIC( QPLACEIMAGE_MIMETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->mimeType () );
  }
#endif
}

/*
void setMimeType(const QString &data)
*/
HB_FUNC_STATIC( QPLACEIMAGE_SETMIMETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMimeType ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
