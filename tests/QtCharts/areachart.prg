//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

REQUEST QAbstractAxis

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSeries0
   LOCAL oSeries1
   LOCAL oSeries
   LOCAL oPen
   LOCAL oGradient
   LOCAL oChart
   LOCAL oChartView

   oApp := QApplication():new()

   oSeries0 := QLineSeries():new()
   oSeries1 := QLineSeries():new()

   oSeries0:append(QPointF():new( 1, 5))
   oSeries0:append(QPointF():new( 3, 7))
   oSeries0:append(QPointF():new( 7, 6))
   oSeries0:append(QPointF():new( 9, 7))
   oSeries0:append(QPointF():new(12, 6))
   oSeries0:append(QPointF():new(16, 7))
   oSeries0:append(QPointF():new(18, 5))

   oSeries1:append(QPointF():new( 1, 3))
   oSeries1:append(QPointF():new( 3, 4))
   oSeries1:append(QPointF():new( 7, 3))
   oSeries1:append(QPointF():new( 8, 2))
   oSeries1:append(QPointF():new(12, 3))
   oSeries1:append(QPointF():new(16, 4))
   oSeries1:append(QPointF():new(18, 3))

   oSeries := QAreaSeries():new(oSeries0, oSeries1)
   oSeries:setName("Batman")
   oPen := QPen():new(QColor():new(0x059605))
   oPen:setWidth(3)
   oSeries:setPen(oPen)

   oGradient := QLinearGradient():new(QPointF():new(0, 0), QPointF():new(0, 1))
   oGradient:setColorAt(0.0, QColor():new(0x3cc63c))
   oGradient:setColorAt(1.0, QColor():new(0x26f626))
   oGradient:setCoordinateMode(QGradient_ObjectBoundingMode)
   oSeries:setBrush(QBrush():new(oGradient))

   oChart := QChart():new()
   oChart:addSeries(oSeries)
   oChart:setTitle("Simple areachart example")
   oChart:createDefaultAxes()
   oChart:axisX():setRange(QVariant():new(0), QVariant():new(20))
   oChart:axisY():setRange(QVariant():new(0), QVariant():new(10))

   oChartView := QChartView():new(oChart)
   oChartView:setRenderHint(QPainter_Antialiasing)

   oWindow := QMainWindow():new()
   oWindow:setCentralWidget(oChartView)
   oWindow:resize(400, 300)
   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL
