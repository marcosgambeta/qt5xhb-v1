/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMENU
REQUEST QRECT
REQUEST QICON
#endif

CLASS QSystemTrayIcon INHERIT QObject

   DATA class_id INIT Class_Id_QSystemTrayIcon
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD contextMenu
   METHOD geometry
   METHOD icon
   METHOD isVisible
   METHOD setContextMenu
   METHOD setIcon
   METHOD setToolTip
   METHOD showMessage
   METHOD toolTip
   METHOD hide
   METHOD setVisible
   METHOD show
   METHOD isSystemTrayAvailable
   METHOD supportsMessages
   METHOD onActivated
   METHOD onMessageClicked
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSystemTrayIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSystemTrayIcon>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSystemTrayIcon>
#endif
#endif

/*
QSystemTrayIcon(QObject * parent = 0)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSystemTrayIcon * o = new QSystemTrayIcon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSystemTrayIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QSystemTrayIcon * o = new QSystemTrayIcon ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSystemTrayIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QSystemTrayIcon(QObject * parent = 0)
//[2]QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSYSTEMTRAYICON_NEW1 );
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||ISCHAR(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSYSTEMTRAYICON_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSystemTrayIcon * obj = (QSystemTrayIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMenu * contextMenu() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_CONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->contextMenu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QRect geometry() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_GEOMETRY )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QIcon icon() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ICON )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISVISIBLE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
void setContextMenu(QMenu * menu)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETCONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * par1 = (QMenu *) _qt5xhb_itemGetPtr(1);
    obj->setContextMenu ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIcon(const QIcon & icon)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETICON )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolTip(const QString & tip)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETTOOLTIP )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMessage(const QString & title, const QString & message, MessageIcon icon = Information, int millisecondsTimeoutHint = 10000)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SHOWMESSAGE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    int par3 = ISNIL(3)? (int) QSystemTrayIcon::Information : hb_parni(3);
    obj->showMessage ( par1, par2,  (QSystemTrayIcon::MessageIcon) par3, (int) ISNIL(4)? 10000 : hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toolTip() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_TOOLTIP )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toolTip (  ).toLatin1().data() );
  }
}


/*
void hide()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_HIDE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SETVISIBLE )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void show()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SHOW )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool isSystemTrayAvailable()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISSYSTEMTRAYAVAILABLE )
{
  hb_retl( QSystemTrayIcon::isSystemTrayAvailable (  ) );
}


/*
static bool supportsMessages()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SUPPORTSMESSAGES )
{
  hb_retl( QSystemTrayIcon::supportsMessages (  ) );
}




#pragma ENDDUMP
