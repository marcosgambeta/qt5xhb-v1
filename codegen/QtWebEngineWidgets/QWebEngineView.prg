$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEPAGE
REQUEST QWEBENGINEHISTORY
REQUEST QURL
REQUEST QACTION
REQUEST QSIZE
#endif

CLASS QWebEngineView INHERIT QWidget

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

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QWebEngineView(QWidget* parent = 0)
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * o = new QWebEngineView ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,4,0

/*
QWebEnginePage* page() const
*/
HB_FUNC_STATIC( QWEBENGINEVIEW_PAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebEnginePage * ptr = obj->page ();
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
    obj->load ( *PQURL(1) );
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
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    obj->setHtml ( PQSTRING(1), par2 );
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
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3);
    obj->setContent ( *PQBYTEARRAY(1), OPQSTRING(2,QString()), par3 );
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
    QWebEngineHistory * ptr = obj->history ();
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
    RQSTRING( obj->title () );
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
    QUrl * ptr = new QUrl( obj->url () );
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
    obj->setUrl ( *PQURL(1) );
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
    QUrl * ptr = new QUrl( obj->iconUrl () );
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
    RBOOL( obj->hasSelection () );
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
    RQSTRING( obj->selectedText () );
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
    QAction * ptr = obj->pageAction ( (QWebEnginePage::WebAction) hb_parni(1) );
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
    obj->triggerPageAction ( (QWebEnginePage::WebAction) hb_parni(1), OPBOOL(2,false) );
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
    RQREAL( obj->zoomFactor () );
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
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    obj->findText ( PQSTRING(1), (QWebEnginePage::FindFlags) par2 );
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
    QSize * ptr = new QSize( obj->sizeHint () );
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
    obj->stop ();
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
    obj->back ();
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
    obj->forward ();
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
    obj->reload ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
