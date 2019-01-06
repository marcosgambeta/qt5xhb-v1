%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

/*
enum QSurface3DSeries::DrawFlag
flags QSurface3DSeries::DrawFlags
*/
#define QSurface3DSeries_DrawWireframe                               1
#define QSurface3DSeries_DrawSurface                                 2
#define QSurface3DSeries_DrawSurfaceAndWireframe                     hb_bitor( QSurface3DSeries_DrawWireframe, QSurface3DSeries_DrawSurface )
