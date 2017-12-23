$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST UCHAR
#endif

CLASS QAbstractVideoBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handle
   METHOD handleType
   METHOD map
   METHOD mapMode
   METHOD unmap

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

#include <QVariant>

$deleteMethod

$prototype=virtual QVariant handle () const
$virtualMethod=|QVariant|handle|

$prototype=HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototype=virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
$virtualMethod=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

$prototype=virtual MapMode mapMode () const = 0
$virtualMethod=|QAbstractVideoBuffer::MapMode|mapMode|

$prototype=virtual void unmap () = 0
$virtualMethod=|void|unmap|

$extraMethods

#pragma ENDDUMP
