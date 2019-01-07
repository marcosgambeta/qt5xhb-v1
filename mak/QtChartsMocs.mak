#
# Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/QAbstractAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QAbstractAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractBarSeriesSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCharts/QAbstractBarSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAbstractSeriesSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QAbstractSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QAreaSeriesSlotsMoc.cpp               : $(QT5XHB_SRC_DIR)/QtCharts/QAreaSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBarCategoryAxisSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QBarCategoryAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBarSetSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCharts/QBarSetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBoxPlotSeriesSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCharts/QBoxPlotSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QBoxSetSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCharts/QBoxSetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCandlestickModelMapperSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtCharts/QCandlestickModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCandlestickSeriesSlotsMoc.cpp        : $(QT5XHB_SRC_DIR)/QtCharts/QCandlestickSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCandlestickSetSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QCandlestickSetSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QCategoryAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QCategoryAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QChartSlotsMoc.cpp                    : $(QT5XHB_SRC_DIR)/QtCharts/QChartSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QDateTimeAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QDateTimeAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHBarModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QHBarModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHBoxPlotModelMapperSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtCharts/QHBoxPlotModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHCandlestickModelMapperSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtCharts/QHCandlestickModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHPieModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QHPieModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QHXYModelMapperSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QHXYModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLegendMarkerSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QLegendMarkerSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLegendSlotsMoc.cpp                   : $(QT5XHB_SRC_DIR)/QtCharts/QLegendSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QLogValueAxisSlotsMoc.cpp             : $(QT5XHB_SRC_DIR)/QtCharts/QLogValueAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPieSeriesSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtCharts/QPieSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QPieSliceSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCharts/QPieSliceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QScatterSeriesSlotsMoc.cpp            : $(QT5XHB_SRC_DIR)/QtCharts/QScatterSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVBarModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QVBarModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVBoxPlotModelMapperSlotsMoc.cpp      : $(QT5XHB_SRC_DIR)/QtCharts/QVBoxPlotModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVCandlestickModelMapperSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtCharts/QVCandlestickModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVPieModelMapperSlotsMoc.cpp          : $(QT5XHB_SRC_DIR)/QtCharts/QVPieModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QVXYModelMapperSlotsMoc.cpp           : $(QT5XHB_SRC_DIR)/QtCharts/QVXYModelMapperSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QValueAxisSlotsMoc.cpp                : $(QT5XHB_SRC_DIR)/QtCharts/QValueAxisSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QXYSeriesSlotsMoc.cpp                 : $(QT5XHB_SRC_DIR)/QtCharts/QXYSeriesSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
