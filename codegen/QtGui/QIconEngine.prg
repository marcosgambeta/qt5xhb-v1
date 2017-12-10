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
$method=|QSize|actualSize|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addFile(const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state)
$method=|void|addFile|const QString &,const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addPixmap(const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state)
$method=|void|addPixmap|const QPixmap &,QIcon::Mode,QIcon::State

$prototype=virtual QList<QSize> availableSizes(QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off) const
$method=|QList<QSize>|availableSizes|QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototype=virtual QIconEngine * clone() const = 0
$method=|QIconEngine *|clone|

$prototype=virtual QString iconName() const
$method=|QString|iconName|

$prototype=virtual QString key() const
$method=|QString|key|

$prototype=virtual void paint(QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state) = 0
$method=|void|paint|QPainter *,const QRect &,QIcon::Mode,QIcon::State

$prototype=virtual QPixmap pixmap(const QSize & size, QIcon::Mode mode, QIcon::State state)
$method=|QPixmap|pixmap|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual bool read(QDataStream & in)
$method=|bool|read|QDataStream &

$prototype=virtual void virtual_hook(int id, void * data)
$method=|void|virtual_hook|int,void *

$prototype=virtual bool write(QDataStream & out) const
$method=|bool|write|QDataStream &

$extraMethods

#pragma ENDDUMP
