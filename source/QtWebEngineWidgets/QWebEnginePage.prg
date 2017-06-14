/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEHISTORY
REQUEST QWIDGET
REQUEST QACTION
REQUEST QMENU
REQUEST QURL
REQUEST QWEBENGINESETTINGS
#endif

CLASS QWebEnginePage INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD history
   METHOD view
   METHOD setView
   METHOD hasSelection
   METHOD selectedText
   METHOD action
   METHOD triggerAction
   METHOD event
   METHOD findText
   METHOD createStandardContextMenu
   METHOD setFeaturePermission
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD toHtml
   METHOD toPlainText
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD requestedUrl
   METHOD iconUrl
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD runJavaScript1
   METHOD runJavaScript2
   METHOD runJavaScript
   METHOD settings

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onLinkHovered
   METHOD onSelectionChanged
   METHOD onGeometryChangeRequested
   METHOD onWindowCloseRequested
   METHOD onFeaturePermissionRequested
   METHOD onFeaturePermissionRequestCanceled
   METHOD onAuthenticationRequired
   METHOD onProxyAuthenticationRequired
   METHOD onTitleChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEnginePage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEnginePage>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEnginePage>
#endif
#endif

/*
explicit QWebEnginePage(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * o = new QWebEnginePage ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWEBENGINEPAGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWebEngineHistory *history() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_HISTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistory * ptr = obj->history ();
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORY" );
  }
#endif
}


/*
QWidget *view() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_VIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->view ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
#endif
}

/*
void setView(QWidget *view)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setView ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool hasSelection() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_HASSELECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasSelection () );
  }
#endif
}


/*
QString selectedText() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SELECTEDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->selectedText () ) );
  }
#endif
}


/*
QAction *action(WebAction action) const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_ACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_ACTION
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAction * ptr = obj->action ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
#endif
}


/*
virtual void triggerAction(WebAction action, bool checked = false)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_TRIGGERACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->triggerAction ( (QWebEnginePage::WebAction) hb_parni(1), OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual bool event(QEvent*)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_EVENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
#endif
}


/*
void findText(const QString &subString, FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_FINDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    obj->findText ( PQSTRING(1), (QWebEnginePage::FindFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QMenu *createStandardContextMenu()
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_CREATESTANDARDCONTEXTMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu ();
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
#endif
}


/*
void setFeaturePermission(const QUrl &securityOrigin, Feature feature, PermissionPolicy policy)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETFEATUREPERMISSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFeaturePermission ( *PQURL(1), (QWebEnginePage::Feature) hb_parni(2), (QWebEnginePage::PermissionPolicy) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void load(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_LOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setHtml(const QString &html, const QUrl &baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETHTML )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    obj->setHtml ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setContent(const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    obj->setContent ( *PQBYTEARRAY(1), OPQSTRING(2,QString()), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void toHtml(const QWebEngineCallback<const QString &> &resultCallback) const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_TOHTML )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toHtml ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void toPlainText(const QWebEngineCallback<const QString &> &resultCallback) const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_TOPLAINTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toPlainText ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->title () ) );
  }
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QWEBENGINEPAGE_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QUrl requestedUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_REQUESTEDURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->requestedUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->iconUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_ZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->zoomFactor () );
  }
#endif
}

/*
void setZoomFactor(qreal factor)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZoomFactor ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void runJavaScript(const QString& scriptSource)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_RUNJAVASCRIPT1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->runJavaScript ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_RUNJAVASCRIPT2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->runJavaScript ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void runJavaScript(const QString& scriptSource)
//[2]void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)

HB_FUNC( QWEBENGINEPAGE_RUNJAVASCRIPT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QWEBENGINEPAGE_RUNJAVASCRIPT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QWEBENGINEPAGE_RUNJAVASCRIPT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebEngineSettings *settings() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineSettings * ptr = obj->settings ();
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINESETTINGS" );
  }
#endif
}




#pragma ENDDUMP
