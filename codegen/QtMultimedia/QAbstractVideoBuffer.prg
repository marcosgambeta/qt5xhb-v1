%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD delete
   METHOD handle
   METHOD handleType
%%   METHOD map
   METHOD mapMode
   METHOD unmap
   METHOD release

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=QAbstractVideoBuffer(HandleType type) (abstract)
%% $constructor=|new|QAbstractVideoBuffer::HandleType

$prototype=virtual ~QAbstractVideoBuffer()
$deleteMethod

$prototype=virtual QVariant handle () const
$virtualMethod=|QVariant|handle|

$prototype=HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototype=virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
%% TODO: implementar
%% $virtualMethod=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

$prototype=virtual MapMode mapMode () const = 0
$virtualMethod=|QAbstractVideoBuffer::MapMode|mapMode|

$prototype=virtual void unmap () = 0
$virtualMethod=|void|unmap|

$prototype=virtual void release()
$virtualMethod=|void|release|

$prototype=int mapPlanes(MapMode mode, int *numBytes, int bytesPerLine[4], uchar *data[4])
%% TODO: implementar

$extraMethods

#pragma ENDDUMP
