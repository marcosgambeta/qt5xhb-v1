//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      run("moc source\QtDataVisualization\Q3DBarsSlots.hpp -o source\QtDataVisualization\Q3DBarsSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DCameraSlots.hpp -o source\QtDataVisualization\Q3DCameraSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DInputHandlerSlots.hpp -o source\QtDataVisualization\Q3DInputHandlerSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DLightSlots.hpp -o source\QtDataVisualization\Q3DLightSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DObjectSlots.hpp -o source\QtDataVisualization\Q3DObjectSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DScatterSlots.hpp -o source\QtDataVisualization\Q3DScatterSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DSceneSlots.hpp -o source\QtDataVisualization\Q3DSceneSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DSurfaceSlots.hpp -o source\QtDataVisualization\Q3DSurfaceSlotsMoc.cpp")
      run("moc source\QtDataVisualization\Q3DThemeSlots.hpp -o source\QtDataVisualization\Q3DThemeSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QAbstract3DAxisSlots.hpp -o source\QtDataVisualization\QAbstract3DAxisSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QAbstract3DGraphSlots.hpp -o source\QtDataVisualization\QAbstract3DGraphSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QAbstract3DInputHandlerSlots.hpp -o source\QtDataVisualization\QAbstract3DInputHandlerSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QAbstract3DSeriesSlots.hpp -o source\QtDataVisualization\QAbstract3DSeriesSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QBar3DSeriesSlots.hpp -o source\QtDataVisualization\QBar3DSeriesSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QBarDataProxySlots.hpp -o source\QtDataVisualization\QBarDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QCategory3DAxisSlots.hpp -o source\QtDataVisualization\QCategory3DAxisSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QCustom3DItemSlots.hpp -o source\QtDataVisualization\QCustom3DItemSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QCustom3DLabelSlots.hpp -o source\QtDataVisualization\QCustom3DLabelSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QCustom3DVolumeSlots.hpp -o source\QtDataVisualization\QCustom3DVolumeSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QHeightMapSurfaceDataProxySlots.hpp -o source\QtDataVisualization\QHeightMapSurfaceDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QItemModelBarDataProxySlots.hpp -o source\QtDataVisualization\QItemModelBarDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QItemModelScatterDataProxySlots.hpp -o source\QtDataVisualization\QItemModelScatterDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QItemModelSurfaceDataProxySlots.hpp -o source\QtDataVisualization\QItemModelSurfaceDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QLogValue3DAxisFormatterSlots.hpp -o source\QtDataVisualization\QLogValue3DAxisFormatterSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QScatter3DSeriesSlots.hpp -o source\QtDataVisualization\QScatter3DSeriesSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QScatterDataProxySlots.hpp -o source\QtDataVisualization\QScatterDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QSurface3DSeriesSlots.hpp -o source\QtDataVisualization\QSurface3DSeriesSlotsMoc.cpp")
      run("moc source\QtDataVisualization\QSurfaceDataProxySlots.hpp -o source\QtDataVisualization\QSurfaceDataProxySlotsMoc.cpp")
      run("moc source\QtDataVisualization\QValue3DAxisSlots.hpp -o source\QtDataVisualization\QValue3DAxisSlotsMoc.cpp")
      EXIT

   CASE "post_all"
      run("del source\QtDataVisualization\Q3DBarsSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DCameraSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DInputHandlerSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DLightSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DObjectSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DScatterSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DSceneSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DSurfaceSlotsMoc.cpp")
      run("del source\QtDataVisualization\Q3DThemeSlotsMoc.cpp")
      run("del source\QtDataVisualization\QAbstract3DAxisSlotsMoc.cpp")
      run("del source\QtDataVisualization\QAbstract3DGraphSlotsMoc.cpp")
      run("del source\QtDataVisualization\QAbstract3DInputHandlerSlotsMoc.cpp")
      run("del source\QtDataVisualization\QAbstract3DSeriesSlotsMoc.cpp")
      run("del source\QtDataVisualization\QBar3DSeriesSlotsMoc.cpp")
      run("del source\QtDataVisualization\QBarDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QCategory3DAxisSlotsMoc.cpp")
      run("del source\QtDataVisualization\QCustom3DItemSlotsMoc.cpp")
      run("del source\QtDataVisualization\QCustom3DLabelSlotsMoc.cpp")
      run("del source\QtDataVisualization\QCustom3DVolumeSlotsMoc.cpp")
      run("del source\QtDataVisualization\QHeightMapSurfaceDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QItemModelBarDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QItemModelScatterDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QItemModelSurfaceDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QLogValue3DAxisFormatterSlotsMoc.cpp")
      run("del source\QtDataVisualization\QScatter3DSeriesSlotsMoc.cpp")
      run("del source\QtDataVisualization\QScatterDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QSurface3DSeriesSlotsMoc.cpp")
      run("del source\QtDataVisualization\QSurfaceDataProxySlotsMoc.cpp")
      run("del source\QtDataVisualization\QValue3DAxisSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
