$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCHAR
REQUEST QDATE
REQUEST QDATETIME
REQUEST QTIME
#endif

CLASS QLocale

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD amText
   METHOD bcp47Name
   METHOD country
   METHOD createSeparatedList
   METHOD currencySymbol
   METHOD dateFormat
   METHOD dateTimeFormat
   METHOD dayName
   METHOD decimalPoint
   METHOD exponential
   METHOD firstDayOfWeek
   METHOD groupSeparator
   METHOD language
   METHOD measurementSystem
   METHOD monthName
   METHOD name
   METHOD nativeCountryName
   METHOD nativeLanguageName
   METHOD negativeSign
   METHOD numberOptions
   METHOD percent
   METHOD pmText
   METHOD positiveSign
   METHOD quoteString1
   METHOD quoteString2
   METHOD quoteString
   METHOD script
   METHOD setNumberOptions
   METHOD standaloneDayName
   METHOD standaloneMonthName
   METHOD textDirection
   METHOD timeFormat
   METHOD toCurrencyString1
   METHOD toCurrencyString2
   METHOD toCurrencyString3
   METHOD toCurrencyString4
   METHOD toCurrencyString5
   METHOD toCurrencyString6
   METHOD toCurrencyString7
   METHOD toCurrencyString8
   METHOD toCurrencyString
   METHOD toDate
   METHOD toDateTime
   METHOD toDouble
   METHOD toFloat
   METHOD toLower
   METHOD toString1
   METHOD toString2
   METHOD toString3
   METHOD toString4
   METHOD toString5
   METHOD toString6
   METHOD toString7
   METHOD toString8
   METHOD toString9
   METHOD toString10
   METHOD toString11
   METHOD toString12
   METHOD toString13
   METHOD toString14
   METHOD toString
   METHOD toTime
   METHOD toUpper
   METHOD uiLanguages
   METHOD weekdays
   METHOD zeroDigit
   METHOD c
   METHOD countryToString
   METHOD languageToString
   METHOD matchingLocales
   METHOD scriptToString
   METHOD setDefault
   METHOD system

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

#include <QDate>
#include <QStringList>

/*
QLocale ()
*/
$internalConstructor=|new1|

/*
QLocale ( const QString & name )
*/
$internalConstructor=|new2|const QString &

/*
QLocale ( Language language, Country country = AnyCountry )
*/
$internalConstructor=|new3|QLocale::Language,QLocale::Country=QLocale::AnyCountry

/*
QLocale ( Language language, Script script, Country country )
*/
$internalConstructor=|new4|QLocale::Language,QLocale::Script,QLocale::Country

/*
QLocale ( const QLocale & other )
*/
$internalConstructor=|new5|const QLocale &

//[1] QLocale ()
//[2] QLocale ( const QString & name )
//[3] QLocale ( Language language, Country country = AnyCountry )
//[4] QLocale ( Language language, Script script, Country country )
//[5] QLocale ( const QLocale & other )

HB_FUNC_STATIC( QLOCALE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QLocale_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLocale_new2();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QLocale_new3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QLocale_new4();
  }
  else if( ISNUMPAR(1) && ISQLOCALE(1) )
  {
    QLocale_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString amText () const
*/
$method=|QString|amText|

/*
QString bcp47Name () const
*/
$method=|QString|bcp47Name|

/*
Country country () const
*/
$method=|QLocale::Country|country|

/*
QString createSeparatedList ( const QStringList & list ) const
*/
$method=|QString|createSeparatedList|const QStringList &

/*
QString currencySymbol ( CurrencySymbolFormat format = CurrencySymbol ) const
*/
$method=|QString|currencySymbol|QLocale::CurrencySymbolFormat=QLocale::CurrencySymbol

/*
QString dateFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|dateFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString dateTimeFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|dateTimeFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString dayName ( int day, FormatType type = LongFormat ) const
*/
$method=|QString|dayName|int,QLocale::FormatType=QLocale::LongFormat

/*
QChar decimalPoint () const
*/
$method=|QChar|decimalPoint|

/*
QChar exponential () const
*/
$method=|QChar|exponential|

/*
Qt::DayOfWeek firstDayOfWeek () const
*/
$method=|Qt::DayOfWeek|firstDayOfWeek|

/*
QChar groupSeparator () const
*/
$method=|QChar|groupSeparator|

/*
Language language () const
*/
$method=|QLocale::Language|language|

/*
MeasurementSystem measurementSystem () const
*/
$method=|QLocale::MeasurementSystem|measurementSystem|

/*
QString monthName ( int month, FormatType type = LongFormat ) const
*/
$method=|QString|monthName|int,QLocale::FormatType=QLocale::LongFormat

/*
QString name () const
*/
$method=|QString|name|

/*
QString nativeCountryName () const
*/
$method=|QString|nativeCountryName|

/*
QString nativeLanguageName () const
*/
$method=|QString|nativeLanguageName|

/*
QChar negativeSign () const
*/
$method=|QChar|negativeSign|

/*
NumberOptions numberOptions () const
*/
$method=|QLocale::NumberOptions|numberOptions|

/*
QChar percent () const
*/
$method=|QChar|percent|

/*
QString pmText () const
*/
$method=|QString|pmText|

/*
QChar positiveSign () const
*/
$method=|QChar|positiveSign|

/*
QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC_STATIC( QLOCALE_QUOTESTRING1 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QLocale::StandardQuotation : hb_parni(2);
      RQSTRING( obj->quoteString ( PQSTRING(1), (QLocale::QuotationStyle) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC_STATIC( QLOCALE_QUOTESTRING2 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSTRINGREF(1) && ISOPTNUM(2) )
    {
      QStringRef * par1 = (QStringRef *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) QLocale::StandardQuotation : hb_parni(2);
      RQSTRING( obj->quoteString ( *par1, (QLocale::QuotationStyle) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[1]QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
//[2]QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const

// TODO: resolver caso do QStringRef

HB_FUNC_STATIC( QLOCALE_QUOTESTRING )
{
  HB_FUNC_EXEC( QLOCALE_QUOTESTRING1 );
}

/*
Script script () const
*/
$method=|QLocale::Script|script|

/*
void setNumberOptions ( NumberOptions options )
*/
$method=|void|setNumberOptions|QLocale::NumberOptions

/*
QString standaloneDayName ( int day, FormatType type = LongFormat ) const
*/
$method=|QString|standaloneDayName|int,QLocale::FormatType=QLocale::LongFormat

/*
QString standaloneMonthName ( int month, FormatType type = LongFormat ) const
*/
$method=|QString|standaloneMonthName|int,QLocale::FormatType=QLocale::LongFormat

/*
Qt::LayoutDirection textDirection () const
*/
$method=|Qt::LayoutDirection|textDirection|

/*
QString timeFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|timeFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING1 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      qlonglong par1 = hb_parnl(1);
      RQSTRING( obj->toCurrencyString ( par1, OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( short value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING2 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->toCurrencyString ( (short) hb_parni(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING3 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->toCurrencyString ( (ushort) hb_parni(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( int value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING4 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->toCurrencyString ( PINT(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING5 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->toCurrencyString ( (uint) hb_parni(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( float value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING6 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->toCurrencyString ( PFLOAT(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING7 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      qulonglong par1 = hb_parnl(1);
      RQSTRING( obj->toCurrencyString ( par1, OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toCurrencyString ( double value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING8 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->toCurrencyString ( PDOUBLE(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[1]QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
//[2]QString toCurrencyString ( short value, const QString & symbol = QString() ) const
//[3]QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
//[4]QString toCurrencyString ( int value, const QString & symbol = QString() ) const
//[5]QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
//[6]QString toCurrencyString ( float value, const QString & symbol = QString() ) const
//[7]QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
//[8]QString toCurrencyString ( double value, const QString & symbol = QString() ) const

// TODO: verificar se é possível identificar o valor passado como parâmetro

HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING )
{
}

/*
QDate toDate ( const QString & string, FormatType format = LongFormat ) const
*/
$internalMethod=|QDate|toDate,toDate1|const QString &,QLocale::FormatType=QLocale::LongFormat

/*
QDate toDate ( const QString & string, const QString & format ) const
*/
$internalMethod=|QDate|toDate,toDate2|const QString &,const QString &

//[1]QDate toDate ( const QString & string, FormatType format = LongFormat ) const
//[2]QDate toDate ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TODATE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QLocale_toDate1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLocale_toDate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
*/
$internalMethod=|QDateTime|toDateTime,toDateTime1|const QString &,QLocale::FormatType=QLocale::LongFormat

/*
QDateTime toDateTime ( const QString & string, const QString & format ) const
*/
$internalMethod=|QDateTime|toDateTime,toDateTime2|const QString &,const QString &

//[1]QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QDateTime toDateTime ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TODATETIME )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QLocale_toDateTime1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLocale_toDateTime2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
double toDouble ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TODOUBLE )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISLOG(2) ) // TODO: implementar parametro opcional
    {
      bool par2;
      RDOUBLE( obj->toDouble ( PQSTRING(1), &par2 ) );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
float toFloat ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOFLOAT )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISLOG(2) ) // TODO: implementar parametro opcional
    {
      bool par2;
      RFLOAT( obj->toFloat ( PQSTRING(1), &par2 ) );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toLower ( const QString & str ) const
*/
$method=|QString|toLower|const QString &

/*
QString toString ( qlonglong i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING1 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      qlonglong par1 = hb_parnl(1);
      RQSTRING( obj->toString ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( const QDate & date, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING2 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATE(1) && ISCHAR(2) )
    {
      RQSTRING( obj->toString ( *PQDATE(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( const QDate & date, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING3 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATE(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
      RQSTRING( obj->toString ( *PQDATE(1), (QLocale::FormatType) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( const QTime & time, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING4 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTIME(1) && ISCHAR(2) )
    {
      RQSTRING( obj->toString ( *PQTIME(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( const QTime & time, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING5 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTIME(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
      RQSTRING( obj->toString ( *PQTIME(1), (QLocale::FormatType) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING6 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATETIME(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
      RQSTRING( obj->toString ( *PQDATETIME(1), (QLocale::FormatType) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( const QDateTime & dateTime, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING7 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATETIME(1) && ISCHAR(2) )
    {
      RQSTRING( obj->toString ( *PQDATETIME(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( short i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING8 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->toString ( (short) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( ushort i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING9 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->toString ( (ushort) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( int i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING10 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->toString ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( uint i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING11 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->toString ( (uint) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( float i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING12 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
    {
      char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
      RQSTRING( obj->toString ( PFLOAT(1), par2, OPINT(3,6) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( qulonglong i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING13 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      qulonglong par1 = hb_parnl(1);
      RQSTRING( obj->toString ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( double i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING14 )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISNUM(2)||ISCHAR(2)||ISNIL(2)) && ISOPTNUM(3) )
    {
      char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
      RQSTRING( obj->toString ( PDOUBLE(1), par2, OPINT(3,6) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[01]QString toString ( qlonglong i ) const
//[02]QString toString ( const QDate & date, const QString & format ) const
//[03]QString toString ( const QDate & date, FormatType format = LongFormat ) const
//[04]QString toString ( const QTime & time, const QString & format ) const
//[05]QString toString ( const QTime & time, FormatType format = LongFormat ) const
//[06]QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
//[07]QString toString ( const QDateTime & dateTime, const QString & format ) const
//[08]QString toString ( short i ) const
//[09]QString toString ( ushort i ) const
//[10]QString toString ( int i ) const
//[11]QString toString ( uint i ) const
//[12]QString toString ( float i, char f = 'g', int prec = 6 ) const
//[13]QString toString ( qulonglong i ) const
//[14]QString toString ( double i, char f = 'g', int prec = 6 ) const

// TODO: implementar verificação dos parâmetros

HB_FUNC_STATIC( QLOCALE_TOSTRING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING10 );
  }
  else if( ISNUMPAR(2) && ISQDATE(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING2 );
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING3 );
  }
  else if( ISNUMPAR(2) && ISQTIME(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING4 );
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING5 );
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING6 );
  }
  else if( ISNUMPAR(2) && ISQDATETIME(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOSTRING7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTime toTime ( const QString & string, FormatType format = LongFormat ) const
*/
$internalMethod=|QTime|toTime,toTime1|const QString &,QLocale::FormatType=QLocale::LongFormat

/*
QTime toTime ( const QString & string, const QString & format ) const
*/
$internalMethod=|QTime|toTime,toTime2|const QString &,const QString &

//[1]QTime toTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QTime toTime ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TOTIME )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QLocale_toTime1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QLocale_toTime2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toUpper ( const QString & str ) const
*/
$method=|QString|toUpper|const QString &

/*
QStringList uiLanguages () const
*/
$method=|QStringList|uiLanguages|

/*
QList<Qt::DayOfWeek> weekdays () const
*/
HB_FUNC_STATIC( QLOCALE_WEEKDAYS )
{
  QLocale * obj = (QLocale *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<Qt::DayOfWeek> list = obj->weekdays ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QChar zeroDigit () const
*/
$method=|QChar|zeroDigit|

/*
static QLocale c ()
*/
$staticMethod=|QLocale|c|

/*
static QString countryToString ( Country country )
*/
$staticMethod=|QString|countryToString|QLocale::Country

/*
static QString languageToString ( Language language )
*/
$staticMethod=|QString|languageToString|QLocale::Language

/*
static QList<QLocale> matchingLocales ( QLocale::Language language, QLocale::Script script, QLocale::Country country )
*/
HB_FUNC_STATIC( QLOCALE_MATCHINGLOCALES )
{
  if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QList<QLocale> list = QLocale::matchingLocales ( (QLocale::Language) hb_parni(1), (QLocale::Script) hb_parni(2), (QLocale::Country) hb_parni(3) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QLOCALE" );
    #else
    pDynSym = hb_dynsymFindName( "QLOCALE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString scriptToString ( Script script )
*/
$staticMethod=|QString|scriptToString|QLocale::Script

/*
static void setDefault ( const QLocale & locale )
*/
$staticMethod=|void|setDefault|const QLocale &

/*
static QLocale system ()
*/
$staticMethod=|QLocale|system|

$extraMethods

#pragma ENDDUMP
