/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QDate

   DATA pointer
   DATA class_id INIT Class_Id_QDate
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
   METHOD isValid1
   METHOD month
   METHOD setDate
   METHOD toJulianDay
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD weekNumber
   METHOD year
   METHOD currentDate
   METHOD fromJulianDay
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isLeapYear
   METHOD isValid2
   METHOD isValid
   METHOD longDayName1
   METHOD longDayName2
   METHOD longDayName
   METHOD longMonthName1
   METHOD longMonthName2
   METHOD longMonthName
   METHOD shortDayName1
   METHOD shortDayName2
   METHOD shortDayName
   METHOD shortMonthName1
   METHOD shortMonthName2
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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDate>
#endif

/*
QDate ()
*/
HB_FUNC_STATIC( QDATE_NEW1 )
{
  QDate * o = new QDate (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QDate ( int y, int m, int d )
*/
HB_FUNC_STATIC( QDATE_NEW2 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QDate * o = new QDate ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDate ()
//[2]QDate ( int y, int m, int d )

HB_FUNC_STATIC( QDATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATE_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDATE_NEW2 );
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
    QDate * ptr = new QDate( obj->addDays ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
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
    QDate * ptr = new QDate( obj->addMonths ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
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
    QDate * ptr = new QDate( obj->addYears ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDATE", true );
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
    hb_retni( obj->day (  ) );
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
    hb_retni( obj->dayOfWeek (  ) );
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
    hb_retni( obj->dayOfYear (  ) );
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
    hb_retni( obj->daysInMonth (  ) );
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
    hb_retni( obj->daysInYear (  ) );
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
    QDate * par1 = (QDate *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->daysTo ( *par1 ) );
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
    int par1;
    int par2;
    int par3;
    obj->getDate ( &par1, &par2, &par3 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
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
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDATE_ISVALID1 )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
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
    hb_retni( obj->month (  ) );
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
    hb_retl( obj->setDate ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3) ) );
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
    hb_retni( obj->toJulianDay (  ) );
  }
}


/*
QString toString ( const QString & format ) const
*/
HB_FUNC_STATIC( QDATE_TOSTRING1 )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->toString ( par1 ).toLatin1().data() );
  }
}

/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
HB_FUNC_STATIC( QDATE_TOSTRING2 )
{
  QDate * obj = (QDate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TextDate : hb_parni(1);
    hb_retc( (const char *) obj->toString (  (Qt::DateFormat) par1 ).toLatin1().data() );
  }
}


//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC_STATIC( QDATE_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDATE_TOSTRING1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATE_TOSTRING2 );
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
    int par1;
    hb_retni( obj->weekNumber ( &par1 ) );
    hb_storni( par1, 1 );
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
    hb_retni( obj->year (  ) );
  }
}


/*
static QDate currentDate ()
*/
HB_FUNC_STATIC( QDATE_CURRENTDATE )
{
  QDate * ptr = new QDate( QDate::currentDate (  ) );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
static QDate fromJulianDay ( int jd )
*/
HB_FUNC_STATIC( QDATE_FROMJULIANDAY )
{
  QDate * ptr = new QDate( QDate::fromJulianDay ( (int) hb_parni(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
static QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
HB_FUNC_STATIC( QDATE_FROMSTRING1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QDate * ptr = new QDate( QDate::fromString ( par1,  (Qt::DateFormat) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}

/*
static QDate fromString ( const QString & string, const QString & format )
*/
HB_FUNC_STATIC( QDATE_FROMSTRING2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QDate * ptr = new QDate( QDate::fromString ( par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QDATE", true );
}


//[1]QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDate fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATE_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATE_FROMSTRING1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDATE_FROMSTRING2 );
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
  hb_retl( QDate::isLeapYear ( (int) hb_parni(1) ) );
}


/*
static bool isValid ( int year, int month, int day )
*/
HB_FUNC_STATIC( QDATE_ISVALID2 )
{
  hb_retl( QDate::isValid ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3) ) );
}


//[1]bool isValid () const
//[2]bool isValid ( int year, int month, int day )

HB_FUNC_STATIC( QDATE_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATE_ISVALID1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDATE_ISVALID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString longDayName ( int weekday )
*/
HB_FUNC_STATIC( QDATE_LONGDAYNAME1 )
{
  hb_retc( (const char *) QDate::longDayName ( (int) hb_parni(1) ).toLatin1().data() );
}

/*
static QString longDayName ( int weekday, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_LONGDAYNAME2 )
{
  int par2 = hb_parni(2);
  hb_retc( (const char *) QDate::longDayName ( (int) hb_parni(1),  (QDate::MonthNameType) par2 ).toLatin1().data() );
}


//[1]QString longDayName ( int weekday )
//[2]QString longDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_LONGDAYNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_LONGDAYNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString longMonthName ( int month )
*/
HB_FUNC_STATIC( QDATE_LONGMONTHNAME1 )
{
  hb_retc( (const char *) QDate::longMonthName ( (int) hb_parni(1) ).toLatin1().data() );
}

/*
static QString longMonthName ( int month, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_LONGMONTHNAME2 )
{
  int par2 = hb_parni(2);
  hb_retc( (const char *) QDate::longMonthName ( (int) hb_parni(1),  (QDate::MonthNameType) par2 ).toLatin1().data() );
}


//[1]QString longMonthName ( int month )
//[2]QString longMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_LONGMONTHNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_LONGMONTHNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString shortDayName ( int weekday )
*/
HB_FUNC_STATIC( QDATE_SHORTDAYNAME1 )
{
  hb_retc( (const char *) QDate::shortDayName ( (int) hb_parni(1) ).toLatin1().data() );
}

/*
static QString shortDayName ( int weekday, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_SHORTDAYNAME2 )
{
  int par2 = hb_parni(2);
  hb_retc( (const char *) QDate::shortDayName ( (int) hb_parni(1),  (QDate::MonthNameType) par2 ).toLatin1().data() );
}


//[1]QString shortDayName ( int weekday )
//[2]QString shortDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_SHORTDAYNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_SHORTDAYNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString shortMonthName ( int month )
*/
HB_FUNC_STATIC( QDATE_SHORTMONTHNAME1 )
{
  hb_retc( (const char *) QDate::shortMonthName ( (int) hb_parni(1) ).toLatin1().data() );
}

/*
static QString shortMonthName ( int month, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_SHORTMONTHNAME2 )
{
  int par2 = hb_parni(2);
  hb_retc( (const char *) QDate::shortMonthName ( (int) hb_parni(1),  (QDate::MonthNameType) par2 ).toLatin1().data() );
}


//[1]QString shortMonthName ( int month )
//[2]QString shortMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_SHORTMONTHNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_SHORTMONTHNAME2 );
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
