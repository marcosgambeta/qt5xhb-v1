%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCALENDARWIDGET
REQUEST QDATE
REQUEST QDATETIME
REQUEST QTIME
REQUEST QSIZE
#endif

CLASS QDateTimeEdit INHERIT QAbstractSpinBox

   METHOD new
   METHOD delete
   METHOD calendarPopup
   METHOD calendarWidget
   METHOD clearMaximumDate
   METHOD clearMaximumDateTime
   METHOD clearMaximumTime
   METHOD clearMinimumDate
   METHOD clearMinimumDateTime
   METHOD clearMinimumTime
   METHOD currentSection
   METHOD currentSectionIndex
   METHOD date
   METHOD dateTime
   METHOD displayFormat
   METHOD displayedSections
   METHOD maximumDate
   METHOD maximumDateTime
   METHOD maximumTime
   METHOD minimumDate
   METHOD minimumDateTime
   METHOD minimumTime
   METHOD sectionAt
   METHOD sectionCount
   METHOD sectionText
   METHOD setCalendarPopup
   METHOD setCalendarWidget
   METHOD setCurrentSection
   METHOD setCurrentSectionIndex
   METHOD setDateRange
   METHOD setDateTimeRange
   METHOD setDisplayFormat
   METHOD setMaximumDate
   METHOD setMaximumDateTime
   METHOD setMaximumTime
   METHOD setMinimumDate
   METHOD setMinimumDateTime
   METHOD setMinimumTime
   METHOD setSelectedSection
   METHOD setTimeRange
   METHOD setTimeSpec
   METHOD time
   METHOD timeSpec
   METHOD clear
   METHOD event
   METHOD sizeHint
   METHOD stepBy
   METHOD setDate
   METHOD setDateTime
   METHOD setTime

   METHOD onDateChanged
   METHOD onDateTimeChanged
   METHOD onTimeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QCalendarWidget>

$prototype=QDateTimeEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
$internalConstructor=|new2|const QDateTime &,QWidget *=0

$prototype=QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
$internalConstructor=|new3|const QDate &,QWidget *=0

$prototype=QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )
$internalConstructor=|new4|const QTime &,QWidget *=0

//[1]QDateTimeEdit ( QWidget * parent = 0 )
//[2]QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
//[3]QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
//[4]QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATETIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDateTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && ISOPTQWIDGET(2) )
  {
    QDateTimeEdit_new2();
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && ISOPTQWIDGET(2) )
  {
    QDateTimeEdit_new3();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTQWIDGET(2) )
  {
    QDateTimeEdit_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool calendarPopup () const
$method=|bool|calendarPopup|

$prototype=QCalendarWidget * calendarWidget () const
$method=|QCalendarWidget *|calendarWidget|

$prototype=void clearMaximumDate ()
$method=|void|clearMaximumDate|

$prototype=void clearMaximumDateTime ()
$method=|void|clearMaximumDateTime|

$prototype=void clearMaximumTime ()
$method=|void|clearMaximumTime|

$prototype=void clearMinimumDate ()
$method=|void|clearMinimumDate|

$prototype=void clearMinimumDateTime ()
$method=|void|clearMinimumDateTime|

$prototype=void clearMinimumTime ()
$method=|void|clearMinimumTime|

$prototype=Section currentSection () const
$method=|QDateTimeEdit::Section|currentSection|

$prototype=int currentSectionIndex () const
$method=|int|currentSectionIndex|

$prototype=QDate date () const
$method=|QDate|date|

$prototype=QDateTime dateTime () const
$method=|QDateTime|dateTime|

$prototype=QString displayFormat () const
$method=|QString|displayFormat|

$prototype=Sections displayedSections () const
$method=|QDateTimeEdit::Sections|displayedSections|

$prototype=QDate maximumDate () const
$method=|QDate|maximumDate|

$prototype=QDateTime maximumDateTime () const
$method=|QDateTime|maximumDateTime|

$prototype=QTime maximumTime () const
$method=|QTime|maximumTime|

$prototype=QDate minimumDate () const
$method=|QDate|minimumDate|

$prototype=QDateTime minimumDateTime () const
$method=|QDateTime|minimumDateTime|

$prototype=QTime minimumTime () const
$method=|QTime|minimumTime|

$prototype=Section sectionAt ( int index ) const
$method=|QDateTimeEdit::Section|sectionAt|int

$prototype=int sectionCount () const
$method=|int|sectionCount|

$prototype=QString sectionText ( Section section ) const
$method=|QString|sectionText|QDateTimeEdit::Section

$prototype=void setCalendarPopup ( bool enable )
$method=|void|setCalendarPopup|bool

$prototype=void setCalendarWidget ( QCalendarWidget * calendarWidget )
$method=|void|setCalendarWidget|QCalendarWidget *

$prototype=void setCurrentSection ( Section section )
$method=|void|setCurrentSection|QDateTimeEdit::Section

$prototype=void setCurrentSectionIndex ( int index )
$method=|void|setCurrentSectionIndex|int

$prototype=void setDateRange ( const QDate & min, const QDate & max )
$method=|void|setDateRange|const QDate &,const QDate &

$prototype=void setDateTimeRange ( const QDateTime & min, const QDateTime & max )
$method=|void|setDateTimeRange|const QDateTime &,const QDateTime &

$prototype=void setDisplayFormat ( const QString & format )
$method=|void|setDisplayFormat|const QString &

$prototype=void setMaximumDate ( const QDate & max )
$method=|void|setMaximumDate|const QDate &

$prototype=void setMaximumDateTime ( const QDateTime & dt )
$method=|void|setMaximumDateTime|const QDateTime &

$prototype=void setMaximumTime ( const QTime & max )
$method=|void|setMaximumTime|const QTime &

$prototype=void setMinimumDate ( const QDate & min )
$method=|void|setMinimumDate|const QDate &

$prototype=void setMinimumDateTime ( const QDateTime & dt )
$method=|void|setMinimumDateTime|const QDateTime &

$prototype=void setMinimumTime ( const QTime & min )
$method=|void|setMinimumTime|const QTime &

$prototype=void setSelectedSection ( Section section )
$method=|void|setSelectedSection|QDateTimeEdit::Section

$prototype=void setTimeRange ( const QTime & min, const QTime & max )
$method=|void|setTimeRange|const QTime &,const QTime &

$prototype=void setTimeSpec ( Qt::TimeSpec spec )
$method=|void|setTimeSpec|Qt::TimeSpec

$prototype=QTime time () const
$method=|QTime|time|

$prototype=Qt::TimeSpec timeSpec () const
$method=|Qt::TimeSpec|timeSpec|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=virtual bool event ( QEvent * event )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual void stepBy ( int steps )
$virtualMethod=|void|stepBy|int

$prototype=void setDate ( const QDate & date )
$method=|void|setDate|const QDate &

$prototype=void setDateTime ( const QDateTime & dateTime )
$method=|void|setDateTime|const QDateTime &

$prototype=void setTime ( const QTime & time )
$method=|void|setTime|const QTime &

$connectSignalFunction

$signalMethod=|dateChanged(QDate)
$signalMethod=|dateTimeChanged(QDateTime)
$signalMethod=|timeChanged(QTime)

#pragma ENDDUMP
