$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTITEM
#endif

CLASS QWinJumpListCategory

   DATA pointer
   DATA self_destruction INIT .F.

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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinJumpListCategory(const QString &title = QString())
*/
$constructor=5,2,0|new|const QString &=QString()

$deleteMethod=5,2,0

/*
Type type() const
*/
$method=5,2,0|Type|type|

/*
bool isVisible() const
*/
$method=5,2,0|bool|isVisible|

/*
void setVisible(bool visible)
*/
$method=5,2,0|void|setVisible|bool

/*
QString title() const
*/
$method=5,2,0|QString|title|

/*
void setTitle(const QString &title)
*/
$method=5,2,0|void|setTitle|const QString &

/*
int count() const
*/
$method=5,2,0|int|count|

/*
bool isEmpty() const
*/
$method=5,2,0|bool|isEmpty|

/*
QList<QWinJumpListItem *> items() const
*/
$method=5,2,0|QList<QWinJumpListItem *>|items|

/*
void addItem(QWinJumpListItem *item)
*/
$method=5,2,0|void|addItem|QWinJumpListItem *

/*
QWinJumpListItem *addDestination(const QString &filePath)
*/
$method=5,2,0|QWinJumpListItem *|addDestination|const QString &

/*
QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
*/
$internalMethod=5,2,0|QWinJumpListItem *|addLink,addLink1|const QString &,const QString &,const QStringList &=QStringList()

/*
QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
*/
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

/*
QWinJumpListItem *addSeparator()
*/
$method=5,2,0|QWinJumpListItem *|addSeparator|

/*
void clear()
*/
$method=5,2,0|void|clear|

$extraMethods

#pragma ENDDUMP
