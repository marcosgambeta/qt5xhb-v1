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

   METHOD new1
   METHOD new2
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
HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW1 )
{
  QWebHitTestResult * o = new QWebHitTestResult ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QWebHitTestResult ( const QWebHitTestResult & other )
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW2 )
{
  QWebHitTestResult * o = new QWebHitTestResult ( *PQWEBHITTESTRESULT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QWebHitTestResult ()
//[2]QWebHitTestResult ( const QWebHitTestResult & other )

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBHITTESTRESULT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWEBHITTESTRESULT(1) )
  {
    HB_FUNC_EXEC( QWEBHITTESTRESULT_NEW2 );
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
HB_FUNC_STATIC( QWEBHITTESTRESULT_ALTERNATETEXT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->alternateText () );
  }
}


/*
QRect boundingRect () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_BOUNDINGRECT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QWebElement element () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ELEMENT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->element () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebElement enclosingBlockElement () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ENCLOSINGBLOCKELEMENT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->enclosingBlockElement () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebFrame * frame () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_FRAME )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebFrame * ptr = obj->frame ();
    _qt5xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QUrl imageUrl () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_IMAGEURL )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->imageUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
bool isContentEditable () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ISCONTENTEDITABLE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isContentEditable () );
  }
}


/*
bool isContentSelected () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ISCONTENTSELECTED )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isContentSelected () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ISNULL )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QWebElement linkElement () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKELEMENT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebElement * ptr = new QWebElement( obj->linkElement () );
    _qt5xhb_createReturnClass ( ptr, "QWEBELEMENT", true );
  }
}


/*
QWebFrame * linkTargetFrame () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKTARGETFRAME )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebFrame * ptr = obj->linkTargetFrame ();
    _qt5xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QString linkText () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKTEXT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->linkText () );
  }
}


/*
QUrl linkTitle () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKTITLE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->linkTitle () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QUrl linkUrl () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_LINKURL )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->linkUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_PIXMAP )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QPoint pos () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_POS )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_TITLE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}



$extraMethods

#pragma ENDDUMP
