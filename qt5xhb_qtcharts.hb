//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#define RUNMOC(file) run("moc " + file + " -o " + strtran(file, ".hpp", "Moc.cpp"))

FUNCTION hbmk_plugin_qt(hbmk)

   LOCAL cRetVal := ""

   SWITCH hbmk["cSTATE"]

   CASE "init"
      EXIT

   CASE "pre_all"
      EXIT

   CASE "pre_c"
      RUNMOC("source\QtCharts\QAbstractAxisSlots.hpp")
      RUNMOC("source\QtCharts\QAbstractBarSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QAbstractSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QAreaSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QBarCategoryAxisSlots.hpp")
      RUNMOC("source\QtCharts\QBarSetSlots.hpp")
      RUNMOC("source\QtCharts\QBoxPlotSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QBoxSetSlots.hpp")
      RUNMOC("source\QtCharts\QCandlestickModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QCandlestickSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QCandlestickSetSlots.hpp")
      RUNMOC("source\QtCharts\QCategoryAxisSlots.hpp")
      RUNMOC("source\QtCharts\QChartSlots.hpp")
      RUNMOC("source\QtCharts\QDateTimeAxisSlots.hpp")
      RUNMOC("source\QtCharts\QHBarModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QHBoxPlotModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QHCandlestickModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QHPieModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QHXYModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QLegendMarkerSlots.hpp")
      RUNMOC("source\QtCharts\QLegendSlots.hpp")
      RUNMOC("source\QtCharts\QLogValueAxisSlots.hpp")
      RUNMOC("source\QtCharts\QPieSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QPieSliceSlots.hpp")
      RUNMOC("source\QtCharts\QScatterSeriesSlots.hpp")
      RUNMOC("source\QtCharts\QValueAxisSlots.hpp")
      RUNMOC("source\QtCharts\QVBarModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QVBoxPlotModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QVCandlestickModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QVPieModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QVXYModelMapperSlots.hpp")
      RUNMOC("source\QtCharts\QXYSeriesSlots.hpp")
      EXIT

   CASE "post_all"
      ferase("source\QtCharts\QAbstractAxisSlotsMoc.cpp")
      ferase("source\QtCharts\QAbstractBarSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QAbstractSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QAreaSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QBarCategoryAxisSlotsMoc.cpp")
      ferase("source\QtCharts\QBarSetSlotsMoc.cpp")
      ferase("source\QtCharts\QBoxPlotSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QBoxSetSlotsMoc.cpp")
      ferase("source\QtCharts\QCandlestickModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QCandlestickSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QCandlestickSetSlotsMoc.cpp")
      ferase("source\QtCharts\QCategoryAxisSlotsMoc.cpp")
      ferase("source\QtCharts\QChartSlotsMoc.cpp")
      ferase("source\QtCharts\QDateTimeAxisSlotsMoc.cpp")
      ferase("source\QtCharts\QHBarModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QHBoxPlotModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QHCandlestickModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QHPieModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QHXYModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QLegendMarkerSlotsMoc.cpp")
      ferase("source\QtCharts\QLegendSlotsMoc.cpp")
      ferase("source\QtCharts\QLogValueAxisSlotsMoc.cpp")
      ferase("source\QtCharts\QPieSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QPieSliceSlotsMoc.cpp")
      ferase("source\QtCharts\QScatterSeriesSlotsMoc.cpp")
      ferase("source\QtCharts\QValueAxisSlotsMoc.cpp")
      ferase("source\QtCharts\QVBarModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QVBoxPlotModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QVCandlestickModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QVPieModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QVXYModelMapperSlotsMoc.cpp")
      ferase("source\QtCharts\QXYSeriesSlotsMoc.cpp")

   ENDSWITCH

RETURN cRetVal
