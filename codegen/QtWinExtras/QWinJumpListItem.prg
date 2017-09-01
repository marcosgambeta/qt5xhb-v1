$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinJumpListItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD setType
   METHOD filePath
   METHOD setFilePath
   METHOD workingDirectory
   METHOD setWorkingDirectory
   METHOD icon
   METHOD setIcon
   METHOD title
   METHOD setTitle
   METHOD description
   METHOD setDescription
   METHOD arguments
   METHOD setArguments

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
explicit QWinJumpListItem(Type type)
*/
$constructor=5,2,0|new|QWinJumpListItem::Type

$deleteMethod=5,2,0

/*
Type type() const
*/
$method=5,2,0|QWinJumpListItem::Type|type|

/*
void setType(Type type)
*/
$method=5,2,0|void|setType|QWinJumpListItem::Type

/*
QString filePath() const
*/
$method=5,2,0|QString|filePath|

/*
void setFilePath(const QString &filePath)
*/
$method=5,2,0|void|setFilePath|const QString &

/*
QString workingDirectory() const
*/
$method=5,2,0|QString|workingDirectory|

/*
void setWorkingDirectory(const QString &workingDirectory)
*/
$method=5,2,0|void|setWorkingDirectory|const QString &

/*
QIcon icon() const
*/
$method=5,2,0|QIcon|icon|

/*
void setIcon(const QIcon &icon)
*/
$method=5,2,0|void|setIcon|const QIcon &

/*
QString title() const
*/
$method=5,2,0|QString|title|

/*
void setTitle(const QString &title)
*/
$method=5,2,0|void|setTitle|const QString &

/*
QString description() const
*/
$method=5,2,0|QString|description|

/*
void setDescription(const QString &description)
*/
$method=5,2,0|void|setDescription|const QString &

/*
QStringList arguments() const
*/
$method=5,2,0|QStringList|arguments|

/*
void setArguments(const QStringList &arguments)
*/
$method=5,2,0|void|setArguments|const QStringList &

$extraMethods

#pragma ENDDUMP
