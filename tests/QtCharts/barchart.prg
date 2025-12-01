//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSet0
   LOCAL oSet1
   LOCAL oSet2
   LOCAL oSet3
   LOCAL oSet4
   LOCAL oSeries
   LOCAL oChart
   LOCAL aCategories
   LOCAL oAxis
   LOCAL oChartView

   oApp := QApplication():new()

   oSet0 := QBarSet():new("Jane")
   oSet1 := QBarSet():new("John")
   oSet2 := QBarSet():new("Axel")
   oSet3 := QBarSet():new("Mary")
   oSet4 := QBarSet():new("Samantha")

   oSet0:append(1)
   oSet0:append(2)
   oSet0:append(3)
   oSet0:append(4)
   oSet0:append(5)
   oSet0:append(6)

   oSet1:append(5)
   oSet1:append(0)
   oSet1:append(0)
   oSet1:append(4)
   oSet1:append(0)
   oSet1:append(7)

   oSet2:append(3)
   oSet2:append(5)
   oSet2:append(8)
   oSet2:append(13)
   oSet2:append(8)
   oSet2:append(5)

   oSet3:append(5)
   oSet3:append(6)
   oSet3:append(7)
   oSet3:append(3)
   oSet3:append(4)
   oSet3:append(5)

   oSet4:append(9)
   oSet4:append(7)
   oSet4:append(5)
   oSet4:append(3)
   oSet4:append(1)
   oSet4:append(2)

   oSeries := QBarSeries():new()
   oSeries:append(oSet0)
   oSeries:append(oSet1)
   oSeries:append(oSet2)
   oSeries:append(oSet3)
   oSeries:append(oSet4)

   oChart := QChart():new()
   oChart:addSeries(oSeries)
   oChart:setTitle("Simple barchart example")
   oChart:setAnimationOptions(QChart_SeriesAnimations)

   aCategories := {"Jan" , "Feb" , "Mar" , "Apr" , "May" , "Jun"}
   oAxis := QBarCategoryAxis():new()
   oAxis:append(aCategories)
   oChart:createDefaultAxes()
   oChart:setAxisX(oAxis, oSeries)

   oChart:legend():setVisible(.T.)
   oChart:legend():setAlignment(Qt_AlignBottom)

   oChartView := QChartView():new(oChart)
   oChartView:setRenderHint(QPainter_Antialiasing)

   oWindow := QMainWindow():new()
   oWindow:setCentralWidget(oChartView)
   oWindow:resize(420, 300)
   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL
