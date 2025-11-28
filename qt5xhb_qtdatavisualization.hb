//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run(cMocExe + " " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""
   LOCAL cMocExe := getenv("QT_MOC_EXE")

   IF empty(cMocExe)
      cMocExe := "moc"
   ENDIF

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source\QtDataVisualization\Q3DBarsSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DCameraSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DInputHandlerSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DLightSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DObjectSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DScatterSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DSceneSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DSurfaceSlots.hpp")
      RUNMOC("source\QtDataVisualization\Q3DThemeSlots.hpp")
      RUNMOC("source\QtDataVisualization\QAbstract3DAxisSlots.hpp")
      RUNMOC("source\QtDataVisualization\QAbstract3DGraphSlots.hpp")
      RUNMOC("source\QtDataVisualization\QAbstract3DInputHandlerSlots.hpp")
      RUNMOC("source\QtDataVisualization\QAbstract3DSeriesSlots.hpp")
      RUNMOC("source\QtDataVisualization\QBar3DSeriesSlots.hpp")
      RUNMOC("source\QtDataVisualization\QBarDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QCategory3DAxisSlots.hpp")
      RUNMOC("source\QtDataVisualization\QCustom3DItemSlots.hpp")
      RUNMOC("source\QtDataVisualization\QCustom3DLabelSlots.hpp")
      RUNMOC("source\QtDataVisualization\QCustom3DVolumeSlots.hpp")
      RUNMOC("source\QtDataVisualization\QHeightMapSurfaceDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QItemModelBarDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QItemModelScatterDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QItemModelSurfaceDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QLogValue3DAxisFormatterSlots.hpp")
      RUNMOC("source\QtDataVisualization\QScatter3DSeriesSlots.hpp")
      RUNMOC("source\QtDataVisualization\QScatterDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QSurface3DSeriesSlots.hpp")
      RUNMOC("source\QtDataVisualization\QSurfaceDataProxySlots.hpp")
      RUNMOC("source\QtDataVisualization\QValue3DAxisSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtDataVisualization\Q3DBarsSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DCameraSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DInputHandlerSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DLightSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DObjectSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DScatterSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DSceneSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DSurfaceSlotsMoc.cpp")
      ferase("source\QtDataVisualization\Q3DThemeSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QAbstract3DAxisSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QAbstract3DGraphSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QAbstract3DInputHandlerSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QAbstract3DSeriesSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QBar3DSeriesSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QBarDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QCategory3DAxisSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QCustom3DItemSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QCustom3DLabelSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QCustom3DVolumeSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QHeightMapSurfaceDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QItemModelBarDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QItemModelScatterDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QItemModelSurfaceDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QLogValue3DAxisFormatterSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QScatter3DSeriesSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QScatterDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QSurface3DSeriesSlotsMoc.cpp")
      ferase("source\QtDataVisualization\QSurfaceDataProxySlotsMoc.cpp")
      ferase("source\QtDataVisualization\QValue3DAxisSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
