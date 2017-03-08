/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEHISTORY
REQUEST QWIDGET
REQUEST QACTION
REQUEST QMENU
REQUEST QURL
REQUEST QWEBENGINESETTINGS
#endif

CLASS QWebEnginePage INHERIT QObject

   DATA class_id INIT Class_Id_QWebEnginePage
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

#include "qt5xhb_clsid.h"
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
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QWebEnginePage * o = new QWebEnginePage ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebEnginePage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    QWebEngineHistory * ptr = obj->history (  );
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
    QWidget * ptr = obj->view (  );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setView ( par1 );
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
    hb_retl( obj->hasSelection (  ) );
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
    hb_retc( (const char *) obj->selectedText (  ).toLatin1().data() );
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
    QAction * ptr = obj->action (  );
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
    int par1 = hb_parni(1);
    obj->triggerAction (  (QWebEnginePage::WebAction) par1, (bool) ISNIL(2)? false : hb_parl(2) );
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
    QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    obj->findText ( par1,  (QWebEnginePage::FindFlags) par2 );
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
    QMenu * ptr = obj->createStandardContextMenu (  );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->setFeaturePermission ( *par1,  (QWebEnginePage::Feature) par2,  (QWebEnginePage::PermissionPolicy) par3 );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->load ( *par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    obj->setHtml ( par1, par2 );
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
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    obj->setContent ( *par1, par2, par3 );
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
    obj->toHtml (  );
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
    obj->toPlainText (  );
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
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
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
    QUrl * ptr = new QUrl( obj->url (  ) );
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
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
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
    QUrl * ptr = new QUrl( obj->requestedUrl (  ) );
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
    QUrl * ptr = new QUrl( obj->iconUrl (  ) );
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
    hb_retnd( obj->zoomFactor (  ) );
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
    qreal par1 = hb_parnd(1);
    obj->setZoomFactor ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->runJavaScript ( par1 );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->runJavaScript ( par1 );
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
    QWebEngineSettings * ptr = obj->settings (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINESETTINGS" );
  }
#endif
}




#pragma ENDDUMP
