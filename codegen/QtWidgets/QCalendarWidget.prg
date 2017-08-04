$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QDATE
REQUEST QSIZE
#endif

CLASS QCalendarWidget INHERIT QWidget

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCharFormat>

/*
QCalendarWidget ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
int dateEditAcceptDelay () const
*/
$method=|int|dateEditAcceptDelay|

/*
QMap<QDate, QTextCharFormat> dateTextFormat () const
*/
%% TODO: implementar

/*
QTextCharFormat dateTextFormat ( const QDate & date ) const
*/
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

/*
Qt::DayOfWeek firstDayOfWeek () const
*/
$method=|Qt::DayOfWeek|firstDayOfWeek|

/*
QTextCharFormat headerTextFormat () const
*/
$method=|QTextCharFormat|headerTextFormat|

/*
HorizontalHeaderFormat horizontalHeaderFormat () const
*/
$method=|QCalendarWidget::HorizontalHeaderFormat|horizontalHeaderFormat|

/*
bool isDateEditEnabled () const
*/
$method=|bool|isDateEditEnabled|

/*
bool isGridVisible () const
*/
$method=|bool|isGridVisible|

/*
bool isNavigationBarVisible () const
*/
$method=|bool|isNavigationBarVisible|

/*
QDate maximumDate () const
*/
$method=|QDate|maximumDate|

/*
QDate minimumDate () const
*/
$method=|QDate|minimumDate|

/*
int monthShown () const
*/
$method=|int|monthShown|

/*
QDate selectedDate () const
*/
$method=|QDate|selectedDate|

/*
SelectionMode selectionMode () const
*/
$method=|QCalendarWidget::SelectionMode|selectionMode|

/*
void setDateEditAcceptDelay ( int delay )
*/
$method=|void|setDateEditAcceptDelay|int

/*
void setDateEditEnabled ( bool enable )
*/
$method=|void|setDateEditEnabled|bool

/*
void setDateTextFormat ( const QDate & date, const QTextCharFormat & format )
*/
$method=|void|setDateTextFormat|const QDate &,const QTextCharFormat &

/*
void setFirstDayOfWeek ( Qt::DayOfWeek dayOfWeek )
*/
$method=|void|setFirstDayOfWeek|Qt::DayOfWeek

/*
void setHeaderTextFormat ( const QTextCharFormat & format )
*/
$method=|void|setHeaderTextFormat|const QTextCharFormat &

/*
void setHorizontalHeaderFormat ( HorizontalHeaderFormat format )
*/
$method=|void|setHorizontalHeaderFormat|QCalendarWidget::HorizontalHeaderFormat

/*
void setMaximumDate ( const QDate & date )
*/
$method=|void|setMaximumDate|const QDate &

/*
void setMinimumDate ( const QDate & date )
*/
$method=|void|setMinimumDate|const QDate &

/*
void setSelectionMode ( SelectionMode mode )
*/
$method=|void|setSelectionMode|QCalendarWidget::SelectionMode

/*
void setVerticalHeaderFormat ( VerticalHeaderFormat format )
*/
$method=|void|setVerticalHeaderFormat|QCalendarWidget::VerticalHeaderFormat

/*
void setWeekdayTextFormat ( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
*/
$method=|void|setWeekdayTextFormat|Qt::DayOfWeek,const QTextCharFormat &

/*
VerticalHeaderFormat verticalHeaderFormat () const
*/
$method=|QCalendarWidget::VerticalHeaderFormat|verticalHeaderFormat|

/*
QTextCharFormat weekdayTextFormat ( Qt::DayOfWeek dayOfWeek ) const
*/
$method=|QTextCharFormat|weekdayTextFormat|Qt::DayOfWeek

/*
int yearShown () const
*/
$method=|int|yearShown|

/*
virtual QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void setCurrentPage ( int year, int month )
*/
$method=|void|setCurrentPage|int,int

/*
void setDateRange ( const QDate & min, const QDate & max )
*/
$method=|void|setDateRange|const QDate &,const QDate &

/*
void setGridVisible ( bool show )
*/
$method=|void|setGridVisible|bool

/*
void setNavigationBarVisible ( bool visible )
*/
$method=|void|setNavigationBarVisible|bool

/*
void setSelectedDate ( const QDate & date )
*/
$method=|void|setSelectedDate|const QDate &

/*
void showNextMonth ()
*/
$method=|void|showNextMonth|

/*
void showNextYear ()
*/
$method=|void|showNextYear|

/*
void showPreviousMonth ()
*/
$method=|void|showPreviousMonth|

/*
void showPreviousYear ()
*/
$method=|void|showPreviousYear|

/*
void showSelectedDate ()
*/
$method=|void|showSelectedDate|

/*
void showToday ()
*/
$method=|void|showToday|

#pragma ENDDUMP
