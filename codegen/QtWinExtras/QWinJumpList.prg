%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTCATEGORY
#endif

CLASS QWinJumpList INHERIT QObject

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD recent
   METHOD frequent
   METHOD tasks
   METHOD categories
   METHOD addCategory
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinJumpList(QObject *parent = 0)
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

$prototype=QString identifier() const
$method=5,2,0|QString|identifier|

$prototype=void setIdentifier(const QString &identifier)
$method=5,2,0|void|setIdentifier|const QString &

$prototype=QWinJumpListCategory *recent() const
$method=5,2,0|QWinJumpListCategory *|recent|

$prototype=QWinJumpListCategory *frequent() const
$method=5,2,0|QWinJumpListCategory *|frequent|

$prototype=QWinJumpListCategory *tasks() const
$method=5,2,0|QWinJumpListCategory *|tasks|

$prototype=QList<QWinJumpListCategory *> categories() const
$method=5,2,0|QList<QWinJumpListCategory *>|categories|

$prototype=void addCategory(QWinJumpListCategory *category)
$internalMethod=5,2,0|void|addCategory,addCategory1|QWinJumpListCategory *

$prototype=QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())
$internalMethod=5,2,0|QWinJumpListCategory *|addCategory,addCategory2|const QString &,const QList<QWinJumpListItem *>=QList<QWinJumpListItem *>()

//[1]void addCategory(QWinJumpListCategory *category)
//[2]QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())

HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY )
{
  if( ISNUMPAR(1) && ISQWINJUMPLISTCATEGORY(1) )
  {
    QWinJumpList_addCategory1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISOPTARRAY(2) )
  {
    QWinJumpList_addCategory2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void clear()
$method=5,2,0|void|clear|

#pragma ENDDUMP
