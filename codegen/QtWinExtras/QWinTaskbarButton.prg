$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QICON
REQUEST QWINTASKBARPROGRESS
#endif

CLASS QWinTaskbarButton INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD window
   METHOD setWindow
   METHOD overlayIcon
   METHOD setOverlayIcon
   METHOD clearOverlayIcon
   METHOD overlayAccessibleDescription
   METHOD setOverlayAccessibleDescription
   METHOD progress
   METHOD eventFilter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinTaskbarButton(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * o = new QWinTaskbarButton ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
QWindow *window() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_WINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
#endif
}

/*
void setWindow(QWindow *window)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
    obj->setWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon overlayIcon() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_OVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->overlayIcon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setOverlayIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETOVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setOverlayIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clearOverlayIcon()
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_CLEAROVERLAYICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearOverlayIcon ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString overlayAccessibleDescription() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_OVERLAYACCESSIBLEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->overlayAccessibleDescription () );
  }
#endif
}

/*
void setOverlayAccessibleDescription(const QString &description)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_SETOVERLAYACCESSIBLEDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverlayAccessibleDescription ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinTaskbarProgress *progress() const
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_PROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinTaskbarProgress * ptr = obj->progress ();
    _qt5xhb_createReturnClass ( ptr, "QWINTASKBARPROGRESS" );
  }
#endif
}


/*
bool eventFilter(QObject *, QEvent *)
*/
HB_FUNC_STATIC( QWINTASKBARBUTTON_EVENTFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarButton * obj = (QWinTaskbarButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->eventFilter ( PQOBJECT(1), PQEVENT(2) ) );
  }
#endif
}



#pragma ENDDUMP
