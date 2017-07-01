/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBHISTORY
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QACTION
REQUEST QWEBSETTINGS
REQUEST QURL
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD findText
   METHOD history
   METHOD icon
   METHOD isModified
   METHOD isTiledBackingStoreFrozen
   METHOD load1
   METHOD load2
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD resizesToContents
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setResizesToContents
   METHOD setTiledBackingStoreFrozen
   METHOD setUrl
   METHOD setZoomFactor
   METHOD settings
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor
   METHOD back
   METHOD forward
   METHOD reload
   METHOD stop

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsWebView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsWebView>
#endif

/*
QGraphicsWebView ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_NEW )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsWebView * o = new QGraphicsWebView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSWEBVIEW_DELETE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FINDTEXT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    RBOOL( obj->findText ( PQSTRING(1), (QWebPage::FindFlags) par2 ) );
  }
}


/*
QWebHistory * history () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_HISTORY )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistory * ptr = obj->history ();
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORY" );
  }
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ICON )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isModified () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISMODIFIED )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isModified () );
  }
}


/*
bool isTiledBackingStoreFrozen () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISTILEDBACKINGSTOREFROZEN )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isTiledBackingStoreFrozen () );
  }
}


/*
void load ( const QUrl & url )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD1 )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD2 )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QNetworkAccessManager::GetOperation : hb_parni(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(3);
    obj->load ( *PQNETWORKREQUEST(1), (QNetworkAccessManager::Operation) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSWEBVIEW_LOAD1 );
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    HB_FUNC_EXEC( QGRAPHICSWEBVIEW_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebPage * page () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * ptr = obj->page ();
    _qt5xhb_createReturnClass ( ptr, "QWEBPAGE" );
  }
}


/*
QAction * pageAction ( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGEACTION )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->pageAction ( (QWebPage::WebAction) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool resizesToContents () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RESIZESTOCONTENTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->resizesToContents () );
  }
}


/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETCONTENT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    obj->setContent ( *PQBYTEARRAY(1), OPQSTRING(2,QString()), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETHTML )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    obj->setHtml ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPage ( QWebPage * page )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETPAGE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * par1 = (QWebPage *) _qt5xhb_itemGetPtr(1);
    obj->setPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizesToContents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRESIZESTOCONTENTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResizesToContents ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTiledBackingStoreFrozen ( bool frozen )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTILEDBACKINGSTOREFROZEN )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTiledBackingStoreFrozen ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETURL )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZoomFactor ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETZOOMFACTOR )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZoomFactor ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTINGS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSettings * ptr = obj->settings ();
    _qt5xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TITLE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}


/*
void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TRIGGERPAGEACTION )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->triggerPageAction ( (QWebPage::WebAction) hb_parni(1), OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_URL )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ZOOMFACTOR )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->zoomFactor () );
  }
}


/*
void back ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_BACK )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void forward ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FORWARD )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reload ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RELOAD )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reload ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_STOP )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
