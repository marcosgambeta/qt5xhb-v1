/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWEBHISTORY
REQUEST QICON
REQUEST QWEBPAGE
REQUEST QACTION
REQUEST QWEBSETTINGS
REQUEST QURL
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   DATA class_id INIT Class_Id_QGraphicsWebView
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsWebView>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsWebView>
#endif
#endif

/*
QGraphicsWebView ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qtxhb_itemGetPtr(1);
  QGraphicsWebView * o = new QGraphicsWebView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsWebView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGRAPHICSWEBVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FINDTEXT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    hb_retl( obj->findText ( par1,  (QWebPage::FindFlags) par2 ) );
  }
}


/*
QWebHistory * history () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_HISTORY )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistory * ptr = obj->history (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBHISTORY" );
  }
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ICON )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isModified () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISMODIFIED )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isModified (  ) );
  }
}


/*
bool isTiledBackingStoreFrozen () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ISTILEDBACKINGSTOREFROZEN )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTiledBackingStoreFrozen (  ) );
  }
}


/*
void load ( const QUrl & url )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD1 )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->load ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD2 )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QNetworkAccessManager::GetOperation : hb_parni(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(3);
    obj->load ( *par1,  (QNetworkAccessManager::Operation) par2, par3 );
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
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && (ISNUM(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
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
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * ptr = obj->page (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBPAGE" );
  }
}


/*
QAction * pageAction ( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_PAGEACTION )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->pageAction (  (QWebPage::WebAction) par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
bool resizesToContents () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RESIZESTOCONTENTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->resizesToContents (  ) );
  }
}


/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETCONTENT )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qtxhb_itemGetPtr(3);
    obj->setContent ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETHTML )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qtxhb_itemGetPtr(2);
    obj->setHtml ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPage ( QWebPage * page )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETPAGE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * par1 = (QWebPage *) _qtxhb_itemGetPtr(1);
    obj->setPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizesToContents ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETRESIZESTOCONTENTS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResizesToContents ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTiledBackingStoreFrozen ( bool frozen )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTILEDBACKINGSTOREFROZEN )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTiledBackingStoreFrozen ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETURL )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZoomFactor ( qreal )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETZOOMFACTOR )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setZoomFactor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_SETTINGS )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSettings * ptr = obj->settings (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TITLE )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}


/*
void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_TRIGGERPAGEACTION )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerPageAction (  (QWebPage::WebAction) par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_URL )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_ZOOMFACTOR )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->zoomFactor (  ) );
  }
}


/*
void back ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_BACK )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void forward ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_FORWARD )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reload ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_RELOAD )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reload (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QGRAPHICSWEBVIEW_STOP )
{
  QGraphicsWebView * obj = (QGraphicsWebView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
