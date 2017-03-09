/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QWEBFRAME
REQUEST QWEBHISTORY
REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QPALETTE
REQUEST QWEBPLUGINFACTORY
REQUEST QSIZE
REQUEST QWEBSETTINGS
REQUEST QUNDOSTACK
REQUEST QWIDGET
#endif

CLASS QWebPage INHERIT QObject

   DATA class_id INIT Class_Id_QWebPage
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD action
   METHOD bytesReceived
   METHOD createStandardContextMenu
   METHOD currentFrame
   METHOD extension
   METHOD findText
   METHOD focusNextPrevChild
   METHOD forwardUnsupportedContent
   METHOD frameAt
   METHOD history
   METHOD inputMethodQuery
   METHOD isContentEditable
   METHOD isModified
   METHOD linkDelegationPolicy
   METHOD mainFrame
   METHOD networkAccessManager
   METHOD palette
   METHOD pluginFactory
   METHOD preferredContentsSize
   METHOD selectedText
   METHOD setContentEditable
   METHOD setForwardUnsupportedContent
   METHOD setLinkDelegationPolicy
   METHOD setNetworkAccessManager
   METHOD setPalette
   METHOD setPluginFactory
   METHOD setPreferredContentsSize
   METHOD setView
   METHOD setViewportSize
   METHOD settings
   METHOD supportsExtension
   METHOD swallowContextMenuEvent
   METHOD totalBytes
   METHOD triggerAction
   METHOD undoStack
   METHOD updatePositionDependentActions
   METHOD view
   METHOD viewportSize
   METHOD event
   METHOD shouldInterruptJavaScript
   METHOD onContentsChanged
   METHOD onDatabaseQuotaExceeded
   METHOD onDownloadRequested
   METHOD onFrameCreated
   METHOD onGeometryChangeRequested
   METHOD onLinkClicked
   METHOD onLinkHovered
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD omMenuBarVisibilityChangeRequested
   METHOD omMicroFocusChanged
   METHOD onPrintRequested
   METHOD onRepaintRequested
   METHOD onRestoreFrameStateRequested
   METHOD onSaveFrameStateRequested
   METHOD onScrollRequested
   METHOD onSelectionChanged
   METHOD onStatusBarMessage
   METHOD onStatusBarVisibilityChangeRequested
   METHOD onToolBarVisibilityChangeRequested
   METHOD onUnsupportedContent
   METHOD onWindowCloseRequested
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebPage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebPage>
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
#include <QWebPage>
#endif

#include <QVariant>

/*
QWebPage ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QWebPage * o = new QWebPage ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebPage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QWEBPAGE_DELETE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * action ( WebAction action ) const
*/
HB_FUNC_STATIC( QWEBPAGE_ACTION )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->action (  (QWebPage::WebAction) par1 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
quint64 bytesReceived () const
*/
HB_FUNC_STATIC( QWEBPAGE_BYTESRECEIVED )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesReceived (  ) );
  }
}


/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QWEBPAGE_CREATESTANDARDCONTEXTMENU )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QWebFrame * currentFrame () const
*/
HB_FUNC_STATIC( QWEBPAGE_CURRENTFRAME )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebFrame * ptr = obj->currentFrame (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_EXTENSION )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QWebPage::ExtensionOption * par2 = (QWebPage::ExtensionOption *) _qt5xhb_itemGetPtr(2);
    QWebPage::ExtensionReturn * par3 = ISNIL(3)? 0 : (QWebPage::ExtensionReturn *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->extension (  (QWebPage::Extension) par1, par2, par3 ) );
  }
}


/*
bool findText ( const QString & subString, FindFlags options = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_FINDTEXT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    hb_retl( obj->findText ( par1,  (QWebPage::FindFlags) par2 ) );
  }
}


/*
bool focusNextPrevChild ( bool next )
*/
HB_FUNC_STATIC( QWEBPAGE_FOCUSNEXTPREVCHILD )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->focusNextPrevChild ( (bool) hb_parl(1) ) );
  }
}


/*
bool forwardUnsupportedContent () const
*/
HB_FUNC_STATIC( QWEBPAGE_FORWARDUNSUPPORTEDCONTENT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->forwardUnsupportedContent (  ) );
  }
}


/*
QWebFrame * frameAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWEBPAGE_FRAMEAT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QWebFrame * ptr = obj->frameAt ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QWebHistory * history () const
*/
HB_FUNC_STATIC( QWEBPAGE_HISTORY )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebHistory * ptr = obj->history (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBHISTORY" );
  }
}


/*
QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
HB_FUNC_STATIC( QWEBPAGE_INPUTMETHODQUERY )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool isContentEditable () const
*/
HB_FUNC_STATIC( QWEBPAGE_ISCONTENTEDITABLE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isContentEditable (  ) );
  }
}


/*
bool isModified () const
*/
HB_FUNC_STATIC( QWEBPAGE_ISMODIFIED )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isModified (  ) );
  }
}


/*
LinkDelegationPolicy linkDelegationPolicy () const
*/
HB_FUNC_STATIC( QWEBPAGE_LINKDELEGATIONPOLICY )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->linkDelegationPolicy (  ) );
  }
}


/*
QWebFrame * mainFrame () const
*/
HB_FUNC_STATIC( QWEBPAGE_MAINFRAME )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebFrame * ptr = obj->mainFrame (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QWEBPAGE_NETWORKACCESSMANAGER )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QPalette palette () const
*/
HB_FUNC_STATIC( QWEBPAGE_PALETTE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
QWebPluginFactory * pluginFactory () const
*/
HB_FUNC_STATIC( QWEBPAGE_PLUGINFACTORY )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPluginFactory * ptr = obj->pluginFactory (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBPLUGINFACTORY" );
  }
}


/*
QSize preferredContentsSize () const
*/
HB_FUNC_STATIC( QWEBPAGE_PREFERREDCONTENTSSIZE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->preferredContentsSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QString selectedText () const
*/
HB_FUNC_STATIC( QWEBPAGE_SELECTEDTEXT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->selectedText (  ).toLatin1().data() );
  }
}


/*
void setContentEditable ( bool editable )
*/
HB_FUNC_STATIC( QWEBPAGE_SETCONTENTEDITABLE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentEditable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForwardUnsupportedContent ( bool forward )
*/
HB_FUNC_STATIC( QWEBPAGE_SETFORWARDUNSUPPORTEDCONTENT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setForwardUnsupportedContent ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
*/
HB_FUNC_STATIC( QWEBPAGE_SETLINKDELEGATIONPOLICY )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLinkDelegationPolicy (  (QWebPage::LinkDelegationPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QWEBPAGE_SETNETWORKACCESSMANAGER )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) _qt5xhb_itemGetPtr(1);
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPalette ( const QPalette & palette )
*/
HB_FUNC_STATIC( QWEBPAGE_SETPALETTE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
    obj->setPalette ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPluginFactory ( QWebPluginFactory * factory )
*/
HB_FUNC_STATIC( QWEBPAGE_SETPLUGINFACTORY )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPluginFactory * par1 = (QWebPluginFactory *) _qt5xhb_itemGetPtr(1);
    obj->setPluginFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredContentsSize ( const QSize & size ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SETPREFERREDCONTENTSSIZE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setPreferredContentsSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setView ( QWidget * view )
*/
HB_FUNC_STATIC( QWEBPAGE_SETVIEW )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setView ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewportSize ( const QSize & size ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SETVIEWPORTSIZE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setViewportSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QWEBPAGE_SETTINGS )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSettings * ptr = obj->settings (  );
    _qt5xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
  }
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SUPPORTSEXTENSION )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->supportsExtension (  (QWebPage::Extension) par1 ) );
  }
}


/*
bool swallowContextMenuEvent ( QContextMenuEvent * event )
*/
HB_FUNC_STATIC( QWEBPAGE_SWALLOWCONTEXTMENUEVENT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QContextMenuEvent * par1 = (QContextMenuEvent *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->swallowContextMenuEvent ( par1 ) );
  }
}


/*
quint64 totalBytes () const
*/
HB_FUNC_STATIC( QWEBPAGE_TOTALBYTES )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->totalBytes (  ) );
  }
}


/*
virtual void triggerAction ( WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QWEBPAGE_TRIGGERACTION )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerAction (  (QWebPage::WebAction) par1, (bool) ISNIL(2)? false : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUndoStack * undoStack () const
*/
HB_FUNC_STATIC( QWEBPAGE_UNDOSTACK )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUndoStack * ptr = obj->undoStack (  );
    _qt5xhb_createReturnClass ( ptr, "QUNDOSTACK" );
  }
}


/*
void updatePositionDependentActions ( const QPoint & pos )
*/
HB_FUNC_STATIC( QWEBPAGE_UPDATEPOSITIONDEPENDENTACTIONS )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->updatePositionDependentActions ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * view () const
*/
HB_FUNC_STATIC( QWEBPAGE_VIEW )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->view (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
QSize viewportSize () const
*/
HB_FUNC_STATIC( QWEBPAGE_VIEWPORTSIZE )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->viewportSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual bool event ( QEvent * ev )
*/
HB_FUNC_STATIC( QWEBPAGE_EVENT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}


/*
bool shouldInterruptJavaScript ()
*/
HB_FUNC_STATIC( QWEBPAGE_SHOULDINTERRUPTJAVASCRIPT )
{
  QWebPage * obj = (QWebPage *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->shouldInterruptJavaScript (  ) );
  }
}




#pragma ENDDUMP
