/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QRECT
REQUEST QICON
#endif

CLASS QSystemTrayIcon INHERIT QObject

   DATA self_destruction INIT .F.

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
#include <QSystemTrayIcon>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSystemTrayIcon>
#endif

/*
QSystemTrayIcon(QObject * parent = 0)
*/
void QSystemTrayIcon_new1 ()
{
  QSystemTrayIcon * o = new QSystemTrayIcon ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)
*/
void QSystemTrayIcon_new2 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QSystemTrayIcon * o = new QSystemTrayIcon ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QSystemTrayIcon(QObject * parent = 0)
//[2]QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSystemTrayIcon_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||ISCHAR(1)) && ISOPTQOBJECT(2) )
  {
    QSystemTrayIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSYSTEMTRAYICON_DELETE )
{
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
}

/*
QMenu * contextMenu() const
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_CONTEXTMENU )
{
  QSystemTrayIcon * obj = (QSystemTrayIcon *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->contextMenu ();
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
    QRect * ptr = new QRect( obj->geometry () );
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
    QIcon * ptr = new QIcon( obj->icon () );
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
    RBOOL( obj->isVisible () );
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
    if( ISQMENU(1) )
    {
      obj->setContextMenu ( PQMENU(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISCHAR(1) )
    {
      obj->setToolTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISCHAR(1) && ISCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      int par3 = ISNIL(3)? (int) QSystemTrayIcon::Information : hb_parni(3);
      obj->showMessage ( PQSTRING(1), PQSTRING(2), (QSystemTrayIcon::MessageIcon) par3, OPINT(4,10000) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RQSTRING( obj->toolTip () );
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
    obj->hide ();
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
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    obj->show ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool isSystemTrayAvailable()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_ISSYSTEMTRAYAVAILABLE )
{
  RBOOL( QSystemTrayIcon::isSystemTrayAvailable () );
}

/*
static bool supportsMessages()
*/
HB_FUNC_STATIC( QSYSTEMTRAYICON_SUPPORTSMESSAGES )
{
  RBOOL( QSystemTrayIcon::supportsMessages () );
}

#pragma ENDDUMP
