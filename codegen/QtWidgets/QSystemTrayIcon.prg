%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QMenu>

$prototype=QSystemTrayIcon(QObject * parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QSystemTrayIcon(const QIcon & icon, QObject * parent = 0)
$internalConstructor=|new2|const QIcon &,QObject *=0

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

$deleteMethod

$prototype=QMenu * contextMenu() const
$method=|QMenu *|contextMenu|

$prototype=QRect geometry() const
$method=|QRect|geometry|

$prototype=QIcon icon() const
$method=|QIcon|icon|

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setContextMenu(QMenu * menu)
$method=|void|setContextMenu|QMenu *

$prototype=void setIcon(const QIcon & icon)
$method=|void|setIcon|const QIcon &

$prototype=void setToolTip(const QString & tip)
$method=|void|setToolTip|const QString &

$prototype=void showMessage(const QString & title, const QString & message, MessageIcon icon = Information, int millisecondsTimeoutHint = 10000)
$method=|void|showMessage|const QString &,const QString &,QSystemTrayIcon::MessageIcon=QSystemTrayIcon::Information,int=10000

$prototype=QString toolTip() const
$method=|QString|toolTip|

$prototype=void hide()
$method=|void|hide|

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=void show()
$method=|void|show|

$prototype=static bool isSystemTrayAvailable()
$staticMethod=|bool|isSystemTrayAvailable|

$prototype=static bool supportsMessages()
$staticMethod=|bool|supportsMessages|

$beginSignals
$signal=|activated(QSystemTrayIcon::ActivationReason)
$signal=|messageClicked()
$endSignals

#pragma ENDDUMP
