$header

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

$destructor

#pragma BEGINDUMP

$includes

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

$deleteMethod

/*
QDate addDays ( int ndays ) const
*/
$method=|QDate|addDays|int

/*
QDate addMonths ( int nmonths ) const
*/
$method=|QDate|addMonths|int

/*
QDate addYears ( int nyears ) const
*/
$method=|QDate|addYears|int

/*
int day () const
*/
$method=|int|day|

/*
int dayOfWeek () const
*/
$method=|int|dayOfWeek|

/*
int dayOfYear () const
*/
$method=|int|dayOfYear|

/*
int daysInMonth () const
*/
$method=|int|daysInMonth|

/*
int daysInYear () const
*/
$method=|int|daysInYear|

/*
int daysTo ( const QDate & d ) const
*/
$method=|int|daysTo|const QDate &

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
$method=|bool|isNull|

/*
int month () const
*/
$method=|int|month|

/*
bool setDate ( int year, int month, int day )
*/
$method=|bool|setDate|int,int,int

/*
int toJulianDay () const
*/
$method=|int|toJulianDay|

/*
QString toString ( const QString & format ) const
*/
$internalMethod=|QString|toString,toString1|const QString &

/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
$internalMethod=|QString|toString,toString2|Qt::DateFormat=Qt::TextDate

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
$method=|int|year|

/*
static QDate currentDate ()
*/
$staticMethod=|QDate|currentDate|

/*
static QDate fromJulianDay ( int jd )
*/
$staticMethod=|QDate|fromJulianDay|int

/*
static QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
$staticInternalMethod=|QDate|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

/*
static QDate fromString ( const QString & string, const QString & format )
*/
$staticInternalMethod=|QDate|fromString,fromString2|const QString &,const QString &

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
$staticMethod=|bool|isLeapYear|int

/*
bool isValid () const
*/
$internalMethod=|bool|isValid,isValid1|

/*
static bool isValid ( int year, int month, int day )
*/
$staticInternalMethod=|bool|isValid,isValid2|int,int,int

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
$staticInternalMethod=|QString|longDayName,longDayName1|int

/*
static QString longDayName ( int weekday, MonthNameType type )
*/
$staticInternalMethod=|QString|longDayName,longDayName2|int,QDate::MonthNameType

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
$staticInternalMethod=|QString|longMonthName,longMonthName1|int

/*
static QString longMonthName ( int month, MonthNameType type )
*/
$staticInternalMethod=|QString|longMonthName,longMonthName2|int,QDate::MonthNameType

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
$staticInternalMethod=|QString|shortDayName,shortDayName1|int

/*
static QString shortDayName ( int weekday, MonthNameType type )
*/
$staticInternalMethod=|QString|shortDayName,shortDayName2|int,QDate::MonthNameType

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
$staticInternalMethod=|QString|shortMonthName,shortMonthName1|int

/*
static QString shortMonthName ( int month, MonthNameType type )
*/
$staticInternalMethod=|QString|shortMonthName,shortMonthName2|int,QDate::MonthNameType

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

$extraMethods

#pragma ENDDUMP
