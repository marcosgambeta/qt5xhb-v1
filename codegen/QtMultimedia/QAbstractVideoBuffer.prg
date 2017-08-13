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

/*
virtual QVariant handle () const
*/
$method=|QVariant|handle|

/*
HandleType handleType () const
*/
$method=|QAbstractVideoBuffer::HandleType|handleType|

/*
virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
*/
$method=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

/*
virtual MapMode mapMode () const = 0
*/
$method=|QAbstractVideoBuffer::MapMode|mapMode|

/*
virtual void unmap () = 0
*/
$method=|void|unmap|

$extraMethods

#pragma ENDDUMP
