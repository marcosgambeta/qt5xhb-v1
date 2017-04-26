/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEPAGE
REQUEST QWEBENGINEHISTORY
REQUEST QURL
REQUEST QACTION
REQUEST QSIZE
#endif

CLASS QWebEngineView INHERIT QWidget

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD history
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD iconUrl
   METHOD hasSelection
   METHOD selectedText
   METHOD pageAction
   METHOD triggerPageAction
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD findText
   METHOD sizeHint
   METHOD stop
   METHOD back
   METHOD forward
   METHOD reload

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onTitleChanged
   METHOD onSelectionChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineView>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineView>
#endif
#endif

/*
explicit QWebEngineView(QWidget* parent = 0)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QWebEngineView * o = new QWebEngineView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWEBENGINEVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWebEnginePage* page() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEnginePage * ptr = obj->page (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEPAGE" );
  }
#endif
}

/*
void setPage(QWebEnginePage* page)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETPAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEnginePage * par1 = (QWebEnginePage *) _qt5xhb_itemGetPtr(1);
    obj->setPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void load(const QUrl& url)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_LOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->load ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETHTML )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
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
void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
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
QWebEngineHistory* history() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_HISTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEngineHistory * ptr = obj->history (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORY" );
  }
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QWEBENGINEVIEW_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->iconUrl (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
bool hasSelection() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_HASSELECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasSelection (  ) );
  }
#endif
}


/*
QString selectedText() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SELECTEDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->selectedText (  ).toLatin1().data() );
  }
#endif
}


/*
QAction* pageAction(QWebEnginePage::WebAction action) const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGEACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#ifndef QT_NO_ACTION
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->pageAction (  (QWebEnginePage::WebAction) par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
#endif
#endif
}


/*
void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_TRIGGERPAGEACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerPageAction (  (QWebEnginePage::WebAction) par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_ZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->zoomFactor (  ) );
  }
#endif
}

/*
void setZoomFactor(qreal factor)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SETZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZoomFactor ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_FINDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_SIZEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}


/*
void stop()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void back()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_BACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->back (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void forward()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_FORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void reload()
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_RELOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reload (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
