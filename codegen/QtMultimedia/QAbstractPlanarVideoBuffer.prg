%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractVideoBuffer

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QAbstractPlanarVideoBuffer(HandleType type) (abstract)
%% $constructor=5,4,0|new|QAbstractVideoBuffer::HandleType

$prototype=virtual ~QAbstractPlanarVideoBuffer()
$deleteMethod=5,4,0

$prototype=uchar *map(MapMode mode, int *numBytes, int *bytesPerLine) override;
%% TODO: implementar

$prototype=virtual int map(MapMode mode, int *numBytes, int bytesPerLine[4], uchar *data[4]) = 0;
%% TODO: implementar

%% //[1]uchar *map(MapMode mode, int *numBytes, int *bytesPerLine) override;
%% //[2]virtual int map(MapMode mode, int *numBytes, int bytesPerLine[4], uchar *data[4]) = 0;

%% HB_FUNC_STATIC( QABSTRACTPLANARVIDEOBUFFER_MAP )
%% {
%%   if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
%%   {
%%     QAbstractPlanarVideoBuffer_map1();
%%   }
%%   else if( ISNUMPAR(4) && ... )
%%   {
%%     QAbstractPlanarVideoBuffer_map2();
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%% }

#pragma ENDDUMP
