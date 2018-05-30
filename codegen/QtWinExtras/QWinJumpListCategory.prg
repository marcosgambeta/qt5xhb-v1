%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD type
   METHOD isVisible
   METHOD setVisible
   METHOD title
   METHOD setTitle
   METHOD count
   METHOD isEmpty
   METHOD items
   METHOD addItem
   METHOD addDestination
   METHOD addLink
   METHOD addSeparator
   METHOD clear

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinJumpListCategory(const QString &title = QString())
$constructor=5,2,0|new|const QString &=QString()

$deleteMethod=5,2,0

$prototype=Type type() const
$method=5,2,0|QWinJumpListCategory::Type|type|

$prototype=bool isVisible() const
$method=5,2,0|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=5,2,0|void|setVisible|bool

$prototype=QString title() const
$method=5,2,0|QString|title|

$prototype=void setTitle(const QString &title)
$method=5,2,0|void|setTitle|const QString &

$prototype=int count() const
$method=5,2,0|int|count|

$prototype=bool isEmpty() const
$method=5,2,0|bool|isEmpty|

$prototype=QList<QWinJumpListItem *> items() const
$method=5,2,0|QList<QWinJumpListItem *>|items|

$prototype=void addItem(QWinJumpListItem *item)
$method=5,2,0|void|addItem|QWinJumpListItem *

$prototype=QWinJumpListItem *addDestination(const QString &filePath)
$method=5,2,0|QWinJumpListItem *|addDestination|const QString &

$prototype=QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
$internalMethod=5,2,0|QWinJumpListItem *|addLink,addLink1|const QString &,const QString &,const QStringList &=QStringList()

$prototype=QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
$internalMethod=5,2,0|QWinJumpListItem *|addLink,addLink2|const QIcon &,const QString &,const QString &,const QStringList &=QStringList()

//[1]QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
//[2]QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTARRAY(3) )
  {
    QWinJumpListCategory_addLink1();
  }
  else if( ISBETWEEN(3,4) && ISQICON(1) && ISCHAR(2) && ISCHAR(3) && ISOPTARRAY(4) )
  {
    QWinJumpListCategory_addLink2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QWinJumpListItem *addSeparator()
$method=5,2,0|QWinJumpListItem *|addSeparator|

$prototype=void clear()
$method=5,2,0|void|clear|

$extraMethods

#pragma ENDDUMP
