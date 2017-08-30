$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
#endif

CLASS QMacPasteboardMime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD convertorName
   METHOD canConvert
   METHOD mimeFor
   METHOD flavorFor
   METHOD convertToMime
   METHOD convertFromMime
   METHOD count

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
QMacPasteboardMime(char)
*/
$constructor=5,2,0|new|char

$deleteMethod=5,2,0

/*
virtual QString convertorName() = 0
*/
$virtualMethod=5,2,0|QString|convertorName|

/*
virtual bool canConvert(const QString &mime, QString flav) = 0
*/
$virtualMethod=5,2,0|bool|canConvert|const QString &,QString

/*
virtual QString mimeFor(QString flav) = 0
*/
$virtualMethod=5,2,0|QString|mimeFor|QString

/*
virtual QString flavorFor(const QString &mime) = 0
*/
$virtualMethod=5,2,0|QString|flavorFor|const QString &

/*
virtual QVariant convertToMime(const QString &mime, QList<QByteArray> data, QString flav) = 0
*/
$virtualMethod=5,2,0|QVariant|convertToMime|const QString &,QList<QByteArray>,QString

/*
virtual QList<QByteArray> convertFromMime(const QString &mime, QVariant data, QString flav) = 0
*/
$virtualMethod=5,2,0|QList<QByteArray>|convertFromMime|const QString &,QVariant,QString

/*
virtual int count(QMimeData *mimeData)
*/
$virtualMethod=5,2,0|int|count|QMimeData *

$extraMethods

#pragma ENDDUMP
