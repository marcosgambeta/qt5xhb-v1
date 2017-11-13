/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMonths
   METHOD addYears
   METHOD day
   METHOD dayOfWeek
   METHOD dayOfYear
   METHOD daysInMonth
   METHOD daysInYear
   METHOD daysTo
   METHOD getDate
   METHOD isNull
   METHOD month
   METHOD setDate
   METHOD toJulianDay
   METHOD toString
   METHOD weekNumber
   METHOD year
   METHOD currentDate
   METHOD fromJulianDay
   METHOD fromString
   METHOD isLeapYear
   METHOD isValid
   METHOD longDayName
   METHOD longMonthName
   METHOD shortDayName
   METHOD shortMonthName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDate>
#endif

/*
QDate ()
*/
void QDate_new1 ()
{
  QDate * o = new QDate ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDate ( int y, int m, int d )
*/
void QDate_new2 ()
{
  QDate * o = new QDate ( PINT(1), PINT(2), PINT(3) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDate ()
//[2]QDate ( int y, int m, int d )

HB_FUNC_STATIC( QDATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDate_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QDate_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATE_DELETE )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
}

/*
QDate addDays ( int ndays ) const
*/
HB_FUNC_STATIC( QDATE_ADDDAYS )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDate * ptr = new QDate( obj->addDays ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDate addMonths ( int nmonths ) const
*/
HB_FUNC_STATIC( QDATE_ADDMONTHS )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDate * ptr = new QDate( obj->addMonths ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDate addYears ( int nyears ) const
*/
HB_FUNC_STATIC( QDATE_ADDYEARS )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QDate * ptr = new QDate( obj->addYears ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QDATE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int day () const
*/
HB_FUNC_STATIC( QDATE_DAY )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->day () );
  }
}

/*
int dayOfWeek () const
*/
HB_FUNC_STATIC( QDATE_DAYOFWEEK )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->dayOfWeek () );
  }
}

/*
int dayOfYear () const
*/
HB_FUNC_STATIC( QDATE_DAYOFYEAR )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->dayOfYear () );
  }
}

/*
int daysInMonth () const
*/
HB_FUNC_STATIC( QDATE_DAYSINMONTH )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->daysInMonth () );
  }
}

/*
int daysInYear () const
*/
HB_FUNC_STATIC( QDATE_DAYSINYEAR )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->daysInYear () );
  }
}

/*
int daysTo ( const QDate & d ) const
*/
HB_FUNC_STATIC( QDATE_DAYSTO )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATE(1) )
    {
      RINT( obj->daysTo ( *PQDATE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void getDate ( int * year, int * month, int * day )
*/
HB_FUNC_STATIC( QDATE_GETDATE )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
      int par1;
      int par2;
      int par3;
      obj->getDate ( &par1, &par2, &par3 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QDATE_ISNULL )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
int month () const
*/
HB_FUNC_STATIC( QDATE_MONTH )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->month () );
  }
}

/*
bool setDate ( int year, int month, int day )
*/
HB_FUNC_STATIC( QDATE_SETDATE )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
      RBOOL( obj->setDate ( PINT(1), PINT(2), PINT(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int toJulianDay () const
*/
HB_FUNC_STATIC( QDATE_TOJULIANDAY )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->toJulianDay () );
  }
}

/*
QString toString ( const QString & format ) const
*/
void QDate_toString1 ()
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toString ( PQSTRING(1) ) );
  }
}

/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
void QDate_toString2 ()
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TextDate : hb_parni(1);
    RQSTRING( obj->toString ( (Qt::DateFormat) par1 ) );
  }
}

//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC_STATIC( QDATE_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDate_toString1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDate_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int weekNumber ( int * yearNumber = 0 ) const
*/
HB_FUNC_STATIC( QDATE_WEEKNUMBER )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) ) // TODO: implementar parametro opcional
    {
      int par1;
      RINT( obj->weekNumber ( &par1 ) );
      hb_storni( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int year () const
*/
HB_FUNC_STATIC( QDATE_YEAR )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->year () );
  }
}

/*
static QDate currentDate ()
*/
HB_FUNC_STATIC( QDATE_CURRENTDATE )
{
  QDate * ptr = new QDate( QDate::currentDate () );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}

/*
static QDate fromJulianDay ( int jd )
*/
HB_FUNC_STATIC( QDATE_FROMJULIANDAY )
{
  if( ISNUM(1) )
  {
    QDate * ptr = new QDate( QDate::fromJulianDay ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
void QDate_fromString1 ()
{
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QDate * ptr = new QDate( QDate::fromString ( PQSTRING(1), (Qt::DateFormat) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}

/*
static QDate fromString ( const QString & string, const QString & format )
*/
void QDate_fromString2 ()
{
  QDate * ptr = new QDate( QDate::fromString ( PQSTRING(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}

//[1]QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDate fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATE_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QDate_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QDate_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isLeapYear ( int year )
*/
HB_FUNC_STATIC( QDATE_ISLEAPYEAR )
{
  if( ISNUM(1) )
  {
    RBOOL( QDate::isLeapYear ( PINT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isValid () const
*/
void QDate_isValid1 ()
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
static bool isValid ( int year, int month, int day )
*/
void QDate_isValid2 ()
{
  RBOOL( QDate::isValid ( PINT(1), PINT(2), PINT(3) ) );
}

//[1]bool isValid () const
//[2]bool isValid ( int year, int month, int day )

HB_FUNC_STATIC( QDATE_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    QDate_isValid1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QDate_isValid2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString longDayName ( int weekday )
*/
void QDate_longDayName1 ()
{
  RQSTRING( QDate::longDayName ( PINT(1) ) );
}

/*
static QString longDayName ( int weekday, MonthNameType type )
*/
void QDate_longDayName2 ()
{
  RQSTRING( QDate::longDayName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}

//[1]QString longDayName ( int weekday )
//[2]QString longDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDate_longDayName1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDate_longDayName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString longMonthName ( int month )
*/
void QDate_longMonthName1 ()
{
  RQSTRING( QDate::longMonthName ( PINT(1) ) );
}

/*
static QString longMonthName ( int month, MonthNameType type )
*/
void QDate_longMonthName2 ()
{
  RQSTRING( QDate::longMonthName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}

//[1]QString longMonthName ( int month )
//[2]QString longMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDate_longMonthName1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDate_longMonthName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString shortDayName ( int weekday )
*/
void QDate_shortDayName1 ()
{
  RQSTRING( QDate::shortDayName ( PINT(1) ) );
}

/*
static QString shortDayName ( int weekday, MonthNameType type )
*/
void QDate_shortDayName2 ()
{
  RQSTRING( QDate::shortDayName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}

//[1]QString shortDayName ( int weekday )
//[2]QString shortDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDate_shortDayName1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDate_shortDayName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString shortMonthName ( int month )
*/
void QDate_shortMonthName1 ()
{
  RQSTRING( QDate::shortMonthName ( PINT(1) ) );
}

/*
static QString shortMonthName ( int month, MonthNameType type )
*/
void QDate_shortMonthName2 ()
{
  RQSTRING( QDate::shortMonthName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}

//[1]QString shortMonthName ( int month )
//[2]QString shortMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDate_shortMonthName1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDate_shortMonthName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDATE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDATE_NEWFROM );
}

HB_FUNC_STATIC( QDATE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDATE_NEWFROM );
}

HB_FUNC_STATIC( QDATE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDATE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
