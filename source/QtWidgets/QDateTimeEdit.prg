/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QCALENDARWIDGET
REQUEST QDATE
REQUEST QDATETIME
REQUEST QTIME
REQUEST QSIZE
#endif

CLASS QDateTimeEdit INHERIT QAbstractSpinBox

   DATA class_id INIT Class_Id_QDateTimeEdit
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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

PROCEDURE destroyObject () CLASS QDateTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDateTimeEdit>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDateTimeEdit>
#endif
#endif

/*
QDateTimeEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QDateTimeEdit * o = new QDateTimeEdit ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTimeEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QDateTimeEdit * o = new QDateTimeEdit ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTimeEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QDateTimeEdit * o = new QDateTimeEdit ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTimeEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QDateTimeEdit * o = new QDateTimeEdit ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTimeEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QDateTimeEdit ( QWidget * parent = 0 )
//[2]QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
//[3]QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
//[4]QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATETIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATETIMEEDIT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDateTimeEdit * obj = (QDateTimeEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool calendarPopup () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CALENDARPOPUP )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->calendarPopup (  ) );
  }
}


/*
QCalendarWidget * calendarWidget () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CALENDARWIDGET )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCalendarWidget * ptr = obj->calendarWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QCALENDARWIDGET" );
  }
}


/*
void clearMaximumDate ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMAXIMUMDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMaximumDate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMaximumDateTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMAXIMUMDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMaximumDateTime (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMaximumTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMAXIMUMTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMaximumTime (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMinimumDate ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMINIMUMDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMinimumDate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMinimumDateTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMINIMUMDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMinimumDateTime (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMinimumTime ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEARMINIMUMTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMinimumTime (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Section currentSection () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CURRENTSECTION )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentSection (  ) );
  }
}


/*
int currentSectionIndex () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CURRENTSECTIONINDEX )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentSectionIndex (  ) );
  }
}


/*
QDate date () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * ptr = new QDate( obj->date (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDateTime dateTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->dateTime (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QString displayFormat () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DISPLAYFORMAT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->displayFormat (  ).toLatin1().data() );
  }
}


/*
Sections displayedSections () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_DISPLAYEDSECTIONS )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->displayedSections (  ) );
  }
}


/*
QDate maximumDate () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MAXIMUMDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * ptr = new QDate( obj->maximumDate (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDateTime maximumDateTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MAXIMUMDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->maximumDateTime (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QTime maximumTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MAXIMUMTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * ptr = new QTime( obj->maximumTime (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
QDate minimumDate () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MINIMUMDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * ptr = new QDate( obj->minimumDate (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDateTime minimumDateTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MINIMUMDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->minimumDateTime (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QTime minimumTime () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_MINIMUMTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * ptr = new QTime( obj->minimumTime (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
Section sectionAt ( int index ) const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SECTIONAT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionAt ( (int) hb_parni(1) ) );
  }
}


/*
int sectionCount () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SECTIONCOUNT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionCount (  ) );
  }
}


/*
QString sectionText ( Section section ) const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SECTIONTEXT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->sectionText (  (QDateTimeEdit::Section) par1 ).toLatin1().data() );
  }
}


/*
void setCalendarPopup ( bool enable )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCALENDARPOPUP )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCalendarPopup ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCalendarWidget ( QCalendarWidget * calendarWidget )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCALENDARWIDGET )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCalendarWidget * par1 = (QCalendarWidget *) _qtxhb_itemGetPtr(1);
    obj->setCalendarWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentSection ( Section section )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCURRENTSECTION )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentSection (  (QDateTimeEdit::Section) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentSectionIndex ( int index )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETCURRENTSECTIONINDEX )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentSectionIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateRange ( const QDate & min, const QDate & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATERANGE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
    QDate * par2 = (QDate *) _qtxhb_itemGetPtr(2);
    obj->setDateRange ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateTimeRange ( const QDateTime & min, const QDateTime & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATETIMERANGE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    QDateTime * par2 = (QDateTime *) _qtxhb_itemGetPtr(2);
    obj->setDateTimeRange ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDisplayFormat ( const QString & format )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDISPLAYFORMAT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDisplayFormat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumDate ( const QDate & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMAXIMUMDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
    obj->setMaximumDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumDateTime ( const QDateTime & dt )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMAXIMUMDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    obj->setMaximumDateTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumTime ( const QTime & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMAXIMUMTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
    obj->setMaximumTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumDate ( const QDate & min )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMINIMUMDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate * par1 = (QDate *) _qtxhb_itemGetPtr(1);
    obj->setMinimumDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumDateTime ( const QDateTime & dt )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMINIMUMDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    obj->setMinimumDateTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumTime ( const QTime & min )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETMINIMUMTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
    obj->setMinimumTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelectedSection ( Section section )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETSELECTEDSECTION )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectedSection (  (QDateTimeEdit::Section) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeRange ( const QTime & min, const QTime & max )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETTIMERANGE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
    QTime * par2 = (QTime *) _qtxhb_itemGetPtr(2);
    obj->setTimeRange ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETTIMESPEC )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTimeSpec (  (Qt::TimeSpec) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTime time () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_TIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * ptr = new QTime( obj->time (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
Qt::TimeSpec timeSpec () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_TIMESPEC )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timeSpec (  ) );
  }
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QDATETIMEEDIT_CLEAR )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_EVENT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SIZEHINT )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void stepBy ( int steps )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_STEPBY )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stepBy ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDate ( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATE )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDate  * par1 = (QDate  *) _qtxhb_itemGetPtr(1);
    obj->setDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDateTime ( const QDateTime & dateTime )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETDATETIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    obj->setDateTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTime ( const QTime & time )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_SETTIME )
{
  QDateTimeEdit * obj = (QDateTimeEdit *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTime * par1 = (QTime *) _qtxhb_itemGetPtr(1);
    obj->setTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
