/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QWebHitTestResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebHitTestResult>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebHitTestResult>
#endif

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
  QWebHitTestResult * par1 = (QWebHitTestResult *) _qt5xhb_itemGetPtr(1);
  QWebHitTestResult * o = new QWebHitTestResult ( *par1 );
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

HB_FUNC_STATIC( QWEBHITTESTRESULT_DELETE )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
QString alternateText () const
*/
HB_FUNC_STATIC( QWEBHITTESTRESULT_ALTERNATETEXT )
{
  QWebHitTestResult * obj = (QWebHitTestResult *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->alternateText () ) );
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
    hb_retl( obj->isContentEditable () );
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
    hb_retl( obj->isContentSelected () );
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
    hb_retl( obj->isNull () );
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
    hb_retc( RQSTRING( obj->linkText () ) );
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
    hb_retc( RQSTRING( obj->title () ) );
  }
}



HB_FUNC_STATIC( QWEBHITTESTRESULT_NEWFROM )
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

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBHITTESTRESULT_NEWFROM );
}

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBHITTESTRESULT_NEWFROM );
}

HB_FUNC_STATIC( QWEBHITTESTRESULT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBHITTESTRESULT_SETSELFDESTRUCTION )
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
