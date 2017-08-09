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
$internalConstructor=5,4,0|new1|

/*
QPlaceImage(const QPlaceContent &other)
*/
$internalConstructor=5,4,0|new2|const QPlaceContent &

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
$method=5,4,0|QUrl|url|

/*
void setUrl(const QUrl &url)
*/
$method=5,4,0|void|setUrl|const QUrl &

/*
QString imageId() const
*/
$method=5,4,0|QString|imageId|

/*
void setImageId(const QString &identifier)
*/
$method=5,4,0|void|setImageId|const QString &

/*
QString mimeType() const
*/
$method=5,4,0|QString|mimeType|

/*
void setMimeType(const QString &data)
*/
$method=5,4,0|void|setMimeType|const QString &

#pragma ENDDUMP
