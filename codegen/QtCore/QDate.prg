%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDate ()
$internalConstructor=|new1|

$prototype=QDate ( int y, int m, int d )
$internalConstructor=|new2|int,int,int

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

$prototype=QDate addDays ( int ndays ) const
$method=|QDate|addDays|int

$prototype=QDate addMonths ( int nmonths ) const
$method=|QDate|addMonths|int

$prototype=QDate addYears ( int nyears ) const
$method=|QDate|addYears|int

$prototype=int day () const
$method=|int|day|

$prototype=int dayOfWeek () const
$method=|int|dayOfWeek|

$prototype=int dayOfYear () const
$method=|int|dayOfYear|

$prototype=int daysInMonth () const
$method=|int|daysInMonth|

$prototype=int daysInYear () const
$method=|int|daysInYear|

$prototype=int daysTo ( const QDate & d ) const
$method=|int|daysTo|const QDate &

$prototype=void getDate ( int * year, int * month, int * day )
$method=|void|getDate|int *,int *,int *

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=int month () const
$method=|int|month|

$prototype=bool setDate ( int year, int month, int day )
$method=|bool|setDate|int,int,int

$prototype=int toJulianDay () const
$method=|int|toJulianDay|

$prototype=QString toString ( const QString & format ) const
$internalMethod=|QString|toString,toString1|const QString &

$prototype=QString toString ( Qt::DateFormat format = Qt::TextDate ) const
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
$addMethod=toString

$prototype=int weekNumber ( int * yearNumber = 0 ) const
%% TODO: implementar parametro opcional
$method=|int|weekNumber|int *=0

$prototype=int year () const
$method=|int|year|

$prototype=static QDate currentDate ()
$staticMethod=|QDate|currentDate|

$prototype=static QDate fromJulianDay ( int jd )
$staticMethod=|QDate|fromJulianDay|int

$prototype=static QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
$internalStaticMethod=|QDate|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

$prototype=static QDate fromString ( const QString & string, const QString & format )
$internalStaticMethod=|QDate|fromString,fromString2|const QString &,const QString &

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
$addMethod=fromString

$prototype=static bool isLeapYear ( int year )
$staticMethod=|bool|isLeapYear|int

$prototype=bool isValid () const
$internalMethod=|bool|isValid,isValid1|

$prototype=static bool isValid ( int year, int month, int day )
$internalStaticMethod=|bool|isValid,isValid2|int,int,int

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
$addMethod=isValid

$prototype=static QString longDayName ( int weekday )
$internalStaticMethod=|QString|longDayName,longDayName1|int

$prototype=static QString longDayName ( int weekday, MonthNameType type )
$internalStaticMethod=|QString|longDayName,longDayName2|int,QDate::MonthNameType

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
$addMethod=longDayName

$prototype=static QString longMonthName ( int month )
$internalStaticMethod=|QString|longMonthName,longMonthName1|int

$prototype=static QString longMonthName ( int month, MonthNameType type )
$internalStaticMethod=|QString|longMonthName,longMonthName2|int,QDate::MonthNameType

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
$addMethod=longMonthName

$prototype=static QString shortDayName ( int weekday )
$internalStaticMethod=|QString|shortDayName,shortDayName1|int

$prototype=static QString shortDayName ( int weekday, MonthNameType type )
$internalStaticMethod=|QString|shortDayName,shortDayName2|int,QDate::MonthNameType

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
$addMethod=shortDayName

$prototype=static QString shortMonthName ( int month )
$internalStaticMethod=|QString|shortMonthName,shortMonthName1|int

$prototype=static QString shortMonthName ( int month, MonthNameType type )
$internalStaticMethod=|QString|shortMonthName,shortMonthName2|int,QDate::MonthNameType

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
$addMethod=shortMonthName

$extraMethods

#pragma ENDDUMP
