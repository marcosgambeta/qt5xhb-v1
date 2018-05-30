%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD dateEditAcceptDelay
   METHOD dateTextFormat2
   METHOD dateTextFormat
   METHOD firstDayOfWeek
   METHOD headerTextFormat
   METHOD horizontalHeaderFormat
   METHOD isDateEditEnabled
   METHOD isGridVisible
   METHOD isNavigationBarVisible
   METHOD maximumDate
   METHOD minimumDate
   METHOD monthShown
   METHOD selectedDate
   METHOD selectionMode
   METHOD setDateEditAcceptDelay
   METHOD setDateEditEnabled
   METHOD setDateTextFormat
   METHOD setFirstDayOfWeek
   METHOD setHeaderTextFormat
   METHOD setHorizontalHeaderFormat
   METHOD setMaximumDate
   METHOD setMinimumDate
   METHOD setSelectionMode
   METHOD setVerticalHeaderFormat
   METHOD setWeekdayTextFormat
   METHOD verticalHeaderFormat
   METHOD weekdayTextFormat
   METHOD yearShown
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentPage
   METHOD setDateRange
   METHOD setGridVisible
   METHOD setNavigationBarVisible
   METHOD setSelectedDate
   METHOD showNextMonth
   METHOD showNextYear
   METHOD showPreviousMonth
   METHOD showPreviousYear
   METHOD showSelectedDate
   METHOD showToday

   METHOD onActivated
   METHOD onClicked
   METHOD onCurrentPageChanged
   METHOD onSelectionChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCharFormat>

$prototype=QCalendarWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int dateEditAcceptDelay () const
$method=|int|dateEditAcceptDelay|

$prototype=QMap<QDate, QTextCharFormat> dateTextFormat () const
%% TODO: implementar

$prototype=QTextCharFormat dateTextFormat ( const QDate & date ) const
$method=|QTextCharFormat|dateTextFormat,dateTextFormat2|const QDate &

//[1]QMap<QDate, QTextCharFormat> dateTextFormat () const
//[2]QTextCharFormat dateTextFormat ( const QDate & date ) const

HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT )
{
  if( ISNUMPAR(0) )
  {
    //HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT1 );
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    HB_FUNC_EXEC( QCALENDARWIDGET_DATETEXTFORMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Qt::DayOfWeek firstDayOfWeek () const
$method=|Qt::DayOfWeek|firstDayOfWeek|

$prototype=QTextCharFormat headerTextFormat () const
$method=|QTextCharFormat|headerTextFormat|

$prototype=HorizontalHeaderFormat horizontalHeaderFormat () const
$method=|QCalendarWidget::HorizontalHeaderFormat|horizontalHeaderFormat|

$prototype=bool isDateEditEnabled () const
$method=|bool|isDateEditEnabled|

$prototype=bool isGridVisible () const
$method=|bool|isGridVisible|

$prototype=bool isNavigationBarVisible () const
$method=|bool|isNavigationBarVisible|

$prototype=QDate maximumDate () const
$method=|QDate|maximumDate|

$prototype=QDate minimumDate () const
$method=|QDate|minimumDate|

$prototype=int monthShown () const
$method=|int|monthShown|

$prototype=QDate selectedDate () const
$method=|QDate|selectedDate|

$prototype=SelectionMode selectionMode () const
$method=|QCalendarWidget::SelectionMode|selectionMode|

$prototype=void setDateEditAcceptDelay ( int delay )
$method=|void|setDateEditAcceptDelay|int

$prototype=void setDateEditEnabled ( bool enable )
$method=|void|setDateEditEnabled|bool

$prototype=void setDateTextFormat ( const QDate & date, const QTextCharFormat & format )
$method=|void|setDateTextFormat|const QDate &,const QTextCharFormat &

$prototype=void setFirstDayOfWeek ( Qt::DayOfWeek dayOfWeek )
$method=|void|setFirstDayOfWeek|Qt::DayOfWeek

$prototype=void setHeaderTextFormat ( const QTextCharFormat & format )
$method=|void|setHeaderTextFormat|const QTextCharFormat &

$prototype=void setHorizontalHeaderFormat ( HorizontalHeaderFormat format )
$method=|void|setHorizontalHeaderFormat|QCalendarWidget::HorizontalHeaderFormat

$prototype=void setMaximumDate ( const QDate & date )
$method=|void|setMaximumDate|const QDate &

$prototype=void setMinimumDate ( const QDate & date )
$method=|void|setMinimumDate|const QDate &

$prototype=void setSelectionMode ( SelectionMode mode )
$method=|void|setSelectionMode|QCalendarWidget::SelectionMode

$prototype=void setVerticalHeaderFormat ( VerticalHeaderFormat format )
$method=|void|setVerticalHeaderFormat|QCalendarWidget::VerticalHeaderFormat

$prototype=void setWeekdayTextFormat ( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
$method=|void|setWeekdayTextFormat|Qt::DayOfWeek,const QTextCharFormat &

$prototype=VerticalHeaderFormat verticalHeaderFormat () const
$method=|QCalendarWidget::VerticalHeaderFormat|verticalHeaderFormat|

$prototype=QTextCharFormat weekdayTextFormat ( Qt::DayOfWeek dayOfWeek ) const
$method=|QTextCharFormat|weekdayTextFormat|Qt::DayOfWeek

$prototype=int yearShown () const
$method=|int|yearShown|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setCurrentPage ( int year, int month )
$method=|void|setCurrentPage|int,int

$prototype=void setDateRange ( const QDate & min, const QDate & max )
$method=|void|setDateRange|const QDate &,const QDate &

$prototype=void setGridVisible ( bool show )
$method=|void|setGridVisible|bool

$prototype=void setNavigationBarVisible ( bool visible )
$method=|void|setNavigationBarVisible|bool

$prototype=void setSelectedDate ( const QDate & date )
$method=|void|setSelectedDate|const QDate &

$prototype=void showNextMonth ()
$method=|void|showNextMonth|

$prototype=void showNextYear ()
$method=|void|showNextYear|

$prototype=void showPreviousMonth ()
$method=|void|showPreviousMonth|

$prototype=void showPreviousYear ()
$method=|void|showPreviousYear|

$prototype=void showSelectedDate ()
$method=|void|showSelectedDate|

$prototype=void showToday ()
$method=|void|showToday|

$beginSignals
$signal=|activated(QDate)
$signal=|clicked(QDate)
$signal=|currentPageChanged(int,int)
$signal=|selectionChanged()
$endSignals

#pragma ENDDUMP
