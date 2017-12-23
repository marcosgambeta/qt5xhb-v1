$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
#endif

CLASS QIconEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD clone
   METHOD iconName
   METHOD key
   METHOD paint
   METHOD pixmap
   METHOD read
   METHOD virtual_hook
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QSize actualSize(const QSize & size, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|QSize|actualSize|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addFile(const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|void|addFile|const QString &,const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addPixmap(const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|void|addPixmap|const QPixmap &,QIcon::Mode,QIcon::State

$prototype=virtual QList<QSize> availableSizes(QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off) const
$virtualMethod=|QList<QSize>|availableSizes|QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=virtual QIconEngine * clone() const = 0
$virtualMethod=|QIconEngine *|clone|

$prototype=virtual QString iconName() const
$virtualMethod=|QString|iconName|

$prototype=virtual QString key() const
$virtualMethod=|QString|key|

$prototype=virtual void paint(QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state) = 0
$virtualMethod=|void|paint|QPainter *,const QRect &,QIcon::Mode,QIcon::State

$prototype=virtual QPixmap pixmap(const QSize & size, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|QPixmap|pixmap|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual bool read(QDataStream & in)
$virtualMethod=|bool|read|QDataStream &

$prototype=virtual void virtual_hook(int id, void * data)
$virtualMethod=|void|virtual_hook|int,void *

$prototype=virtual bool write(QDataStream & out) const
$virtualMethod=|bool|write|QDataStream &

$extraMethods

#pragma ENDDUMP
