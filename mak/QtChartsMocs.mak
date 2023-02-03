#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QAbstractAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractBarSeriesSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCharts/QAbstractBarSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractSeriesSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QAbstractSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAreaSeriesSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtCharts/QAreaSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBarCategoryAxisSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QBarCategoryAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBarSetSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCharts/QBarSetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBoxPlotSeriesSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCharts/QBoxPlotSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBoxSetSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCharts/QBoxSetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCandlestickModelMapperSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtCharts/QCandlestickModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCandlestickSeriesSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCharts/QCandlestickSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCandlestickSetSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QCandlestickSetSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCategoryAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QCategoryAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QChartSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtCharts/QChartSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDateTimeAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QDateTimeAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHBarModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QHBarModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHBoxPlotModelMapperSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtCharts/QHBoxPlotModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHCandlestickModelMapperSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtCharts/QHCandlestickModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHPieModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QHPieModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHXYModelMapperSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QHXYModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLegendMarkerSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QLegendMarkerSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLegendSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCharts/QLegendSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLogValueAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QLogValueAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPieSeriesSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtCharts/QPieSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPieSliceSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCharts/QPieSliceSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScatterSeriesSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCharts/QScatterSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVBarModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QVBarModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVBoxPlotModelMapperSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtCharts/QVBoxPlotModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVCandlestickModelMapperSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtCharts/QVCandlestickModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVPieModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QVPieModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVXYModelMapperSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QVXYModelMapperSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QValueAxisSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtCharts/QValueAxisSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QXYSeriesSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCharts/QXYSeriesSlots.hpp
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
