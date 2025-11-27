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
      run("moc source\QtCharts\QAbstractAxisSlots.hpp -o source\QtCharts\QAbstractAxisSlotsMoc.cpp")
      run("moc source\QtCharts\QAbstractBarSeriesSlots.hpp -o source\QtCharts\QAbstractBarSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QAbstractSeriesSlots.hpp -o source\QtCharts\QAbstractSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QAreaSeriesSlots.hpp -o source\QtCharts\QAreaSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QBarCategoryAxisSlots.hpp -o source\QtCharts\QBarCategoryAxisSlotsMoc.cpp")
      run("moc source\QtCharts\QBarSetSlots.hpp -o source\QtCharts\QBarSetSlotsMoc.cpp")
      run("moc source\QtCharts\QBoxPlotSeriesSlots.hpp -o source\QtCharts\QBoxPlotSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QBoxSetSlots.hpp -o source\QtCharts\QBoxSetSlotsMoc.cpp")
      run("moc source\QtCharts\QCandlestickModelMapperSlots.hpp -o source\QtCharts\QCandlestickModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QCandlestickSeriesSlots.hpp -o source\QtCharts\QCandlestickSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QCandlestickSetSlots.hpp -o source\QtCharts\QCandlestickSetSlotsMoc.cpp")
      run("moc source\QtCharts\QCategoryAxisSlots.hpp -o source\QtCharts\QCategoryAxisSlotsMoc.cpp")
      run("moc source\QtCharts\QChartSlots.hpp -o source\QtCharts\QChartSlotsMoc.cpp")
      run("moc source\QtCharts\QDateTimeAxisSlots.hpp -o source\QtCharts\QDateTimeAxisSlotsMoc.cpp")
      run("moc source\QtCharts\QHBarModelMapperSlots.hpp -o source\QtCharts\QHBarModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QHBoxPlotModelMapperSlots.hpp -o source\QtCharts\QHBoxPlotModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QHCandlestickModelMapperSlots.hpp -o source\QtCharts\QHCandlestickModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QHPieModelMapperSlots.hpp -o source\QtCharts\QHPieModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QHXYModelMapperSlots.hpp -o source\QtCharts\QHXYModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QLegendMarkerSlots.hpp -o source\QtCharts\QLegendMarkerSlotsMoc.cpp")
      run("moc source\QtCharts\QLegendSlots.hpp -o source\QtCharts\QLegendSlotsMoc.cpp")
      run("moc source\QtCharts\QLogValueAxisSlots.hpp -o source\QtCharts\QLogValueAxisSlotsMoc.cpp")
      run("moc source\QtCharts\QPieSeriesSlots.hpp -o source\QtCharts\QPieSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QPieSliceSlots.hpp -o source\QtCharts\QPieSliceSlotsMoc.cpp")
      run("moc source\QtCharts\QScatterSeriesSlots.hpp -o source\QtCharts\QScatterSeriesSlotsMoc.cpp")
      run("moc source\QtCharts\QValueAxisSlots.hpp -o source\QtCharts\QValueAxisSlotsMoc.cpp")
      run("moc source\QtCharts\QVBarModelMapperSlots.hpp -o source\QtCharts\QVBarModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QVBoxPlotModelMapperSlots.hpp -o source\QtCharts\QVBoxPlotModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QVCandlestickModelMapperSlots.hpp -o source\QtCharts\QVCandlestickModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QVPieModelMapperSlots.hpp -o source\QtCharts\QVPieModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QVXYModelMapperSlots.hpp -o source\QtCharts\QVXYModelMapperSlotsMoc.cpp")
      run("moc source\QtCharts\QXYSeriesSlots.hpp -o source\QtCharts\QXYSeriesSlotsMoc.cpp")
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
