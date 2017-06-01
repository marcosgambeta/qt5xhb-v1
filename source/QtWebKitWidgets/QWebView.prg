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

CLASS QWebView INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD findText
   METHOD history
   METHOD icon
   METHOD isModified
   METHOD load1
   METHOD load2
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD renderHints
   METHOD selectedText
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTextSizeMultiplier
   METHOD setUrl
   METHOD setZoomFactor
   METHOD settings
   METHOD textSizeMultiplier
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor
   METHOD back
   METHOD forward
   METHOD print
   METHOD reload
   METHOD stop

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onSelectionChanged
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebView>
#endif

#include <QWidget>
#include <QUrl>

/*
QWebView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWEBVIEW_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QWebView * o = new QWebView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QWEBVIEW_DELETE )
{
  QWebView * obj = (QWebView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QWEBVIEW_FINDTEXT )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    hb_retl( obj->findText ( PQSTRING(1), (QWebPage::FindFlags) par2 ) );
  }
}


/*
QWebHistory * history () const
*/
HB_FUNC_STATIC( QWEBVIEW_HISTORY )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistory * ptr = obj->history ();
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORY" );
  }
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QWEBVIEW_ICON )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isModified () const
*/
HB_FUNC_STATIC( QWEBVIEW_ISMODIFIED )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isModified () );
  }
}


/*
void load ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBVIEW_LOAD1 )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->load ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/
HB_FUNC_STATIC( QWEBVIEW_LOAD2 )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QNetworkAccessManager::GetOperation : hb_parni(2);
    QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(3);
    obj->load ( *par1, (QNetworkAccessManager::Operation) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load ( const QUrl & url )
//[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )

HB_FUNC_STATIC( QWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QWEBVIEW_LOAD1 );
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    HB_FUNC_EXEC( QWEBVIEW_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebPage * page () const
*/
HB_FUNC_STATIC( QWEBVIEW_PAGE )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * ptr = obj->page ();
    _qt5xhb_createReturnClass ( ptr, "QWEBPAGE" );
  }
}


/*
QAction * pageAction ( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC( QWEBVIEW_PAGEACTION )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->pageAction ( (QWebPage::WebAction) par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QPainter::RenderHints renderHints () const
*/
HB_FUNC_STATIC( QWEBVIEW_RENDERHINTS )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderHints () );
  }
}


/*
QString selectedText () const
*/
HB_FUNC_STATIC( QWEBVIEW_SELECTEDTEXT )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->selectedText () ) );
  }
}


/*
void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QWEBVIEW_SETCONTENT )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    obj->setContent ( *par1, OPQSTRING(2,QString()), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
*/
HB_FUNC_STATIC( QWEBVIEW_SETHTML )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QWEBVIEW_SETPAGE )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * par1 = (QWebPage *) _qt5xhb_itemGetPtr(1);
    obj->setPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
*/
HB_FUNC_STATIC( QWEBVIEW_SETRENDERHINT )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHint ( (QPainter::RenderHint) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRenderHints ( QPainter::RenderHints hints )
*/
HB_FUNC_STATIC( QWEBVIEW_SETRENDERHINTS )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRenderHints ( (QPainter::RenderHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextSizeMultiplier ( qreal factor )
*/
HB_FUNC_STATIC( QWEBVIEW_SETTEXTSIZEMULTIPLIER )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextSizeMultiplier ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QWEBVIEW_SETURL )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZoomFactor ( qreal factor )
*/
HB_FUNC_STATIC( QWEBVIEW_SETZOOMFACTOR )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZoomFactor ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QWEBVIEW_SETTINGS )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSettings * ptr = obj->settings ();
    _qt5xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
  }
}


/*
qreal textSizeMultiplier () const
*/
HB_FUNC_STATIC( QWEBVIEW_TEXTSIZEMULTIPLIER )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->textSizeMultiplier () );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWEBVIEW_TITLE )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->title () ) );
  }
}


/*
void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QWEBVIEW_TRIGGERPAGEACTION )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerPageAction ( (QWebPage::WebAction) par1, OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QWEBVIEW_URL )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QWEBVIEW_ZOOMFACTOR )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->zoomFactor () );
  }
}


/*
void back ()
*/
HB_FUNC_STATIC( QWEBVIEW_BACK )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void forward ()
*/
HB_FUNC_STATIC( QWEBVIEW_FORWARD )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void print ( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QWEBVIEW_PRINT )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPrinter * par1 = (QPrinter *) _qt5xhb_itemGetPtr(1);
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reload ()
*/
HB_FUNC_STATIC( QWEBVIEW_RELOAD )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reload ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QWEBVIEW_STOP )
{
  QWebView * obj = (QWebView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
