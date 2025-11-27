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
      run("del source\QtCharts\QAbstractAxisSlotsMoc.cpp")
      run("del source\QtCharts\QAbstractBarSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QAbstractSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QAreaSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QBarCategoryAxisSlotsMoc.cpp")
      run("del source\QtCharts\QBarSetSlotsMoc.cpp")
      run("del source\QtCharts\QBoxPlotSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QBoxSetSlotsMoc.cpp")
      run("del source\QtCharts\QCandlestickModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QCandlestickSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QCandlestickSetSlotsMoc.cpp")
      run("del source\QtCharts\QCategoryAxisSlotsMoc.cpp")
      run("del source\QtCharts\QChartSlotsMoc.cpp")
      run("del source\QtCharts\QDateTimeAxisSlotsMoc.cpp")
      run("del source\QtCharts\QHBarModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QHBoxPlotModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QHCandlestickModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QHPieModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QHXYModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QLegendMarkerSlotsMoc.cpp")
      run("del source\QtCharts\QLegendSlotsMoc.cpp")
      run("del source\QtCharts\QLogValueAxisSlotsMoc.cpp")
      run("del source\QtCharts\QPieSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QPieSliceSlotsMoc.cpp")
      run("del source\QtCharts\QScatterSeriesSlotsMoc.cpp")
      run("del source\QtCharts\QValueAxisSlotsMoc.cpp")
      run("del source\QtCharts\QVBarModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QVBoxPlotModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QVCandlestickModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QVPieModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QVXYModelMapperSlotsMoc.cpp")
      run("del source\QtCharts\QXYSeriesSlotsMoc.cpp")
      EXIT

   ENDSWITCH

RETURN cRetVal
