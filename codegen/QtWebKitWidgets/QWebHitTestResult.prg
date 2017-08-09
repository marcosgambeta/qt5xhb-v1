$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWEBELEMENT
REQUEST QWEBFRAME
REQUEST QURL
REQUEST QPIXMAP
REQUEST QPOINT
#endif

CLASS QWebHitTestResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alternateText
   METHOD boundingRect
   METHOD element
   METHOD enclosingBlockElement
   METHOD frame
   METHOD imageUrl
   METHOD isContentEditable
   METHOD isContentSelected
   METHOD isNull
   METHOD linkElement
   METHOD linkTargetFrame
   METHOD linkText
   METHOD linkTitle
   METHOD linkUrl
   METHOD pixmap
   METHOD pos
   METHOD title

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

#include <QWebElement>

/*
QWebHitTestResult ()
*/
$internalConstructor=|new1|

/*
QWebHitTestResult ( const QWebHitTestResult & other )
*/
$internalConstructor=|new2|const QWebHitTestResult &

//[1]QWebHitTestResult ()
//[2]QWebHitTestResult ( const QWebHitTestResult & other )

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebHitTestResult_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBHITTESTRESULT(1) )
  {
    QWebHitTestResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString alternateText () const
*/
$method=|QString|alternateText|

/*
QRect boundingRect () const
*/
$method=|QRect|boundingRect|

/*
QWebElement element () const
*/
$method=|QWebElement|element|

/*
QWebElement enclosingBlockElement () const
*/
$method=|QWebElement|enclosingBlockElement|

/*
QWebFrame * frame () const
*/
$method=|QWebFrame *|frame|

/*
QUrl imageUrl () const
*/
$method=|QUrl|imageUrl|

/*
bool isContentEditable () const
*/
$method=|bool|isContentEditable|

/*
bool isContentSelected () const
*/
$method=|bool|isContentSelected|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QWebElement linkElement () const
*/
$method=|QWebElement|linkElement|

/*
QWebFrame * linkTargetFrame () const
*/
$method=|QWebFrame *|linkTargetFrame|

/*
QString linkText () const
*/
$method=|QString|linkText|

/*
QUrl linkTitle () const
*/
$method=|QUrl|linkTitle|

/*
QUrl linkUrl () const
*/
$method=|QUrl|linkUrl|

/*
QPixmap pixmap () const
*/
$method=|QPixmap|pixmap|

/*
QPoint pos () const
*/
$method=|QPoint|pos|

/*
QString title () const
*/
$method=|QString|title|

$extraMethods

#pragma ENDDUMP
