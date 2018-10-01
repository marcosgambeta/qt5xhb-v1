%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDate>
#include <QStringList>

$prototype=QLocale ()
$internalConstructor=|new1|

$prototype=QLocale ( const QString & name )
$internalConstructor=|new2|const QString &

$prototype=QLocale ( Language language, Country country = AnyCountry )
$internalConstructor=|new3|QLocale::Language,QLocale::Country=QLocale::AnyCountry

$prototype=QLocale ( Language language, Script script, Country country )
$internalConstructor=|new4|QLocale::Language,QLocale::Script,QLocale::Country

$prototype=QLocale ( const QLocale & other )
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

$prototype=QString amText () const
$method=|QString|amText|

$prototype=QString bcp47Name () const
$method=|QString|bcp47Name|

$prototype=Country country () const
$method=|QLocale::Country|country|

$prototype=QString createSeparatedList ( const QStringList & list ) const
$method=|QString|createSeparatedList|const QStringList &

$prototype=QString currencySymbol ( CurrencySymbolFormat format = CurrencySymbol ) const
$method=|QString|currencySymbol|QLocale::CurrencySymbolFormat=QLocale::CurrencySymbol

$prototype=QString dateFormat ( FormatType format = LongFormat ) const
$method=|QString|dateFormat|QLocale::FormatType=QLocale::LongFormat

$prototype=QString dateTimeFormat ( FormatType format = LongFormat ) const
$method=|QString|dateTimeFormat|QLocale::FormatType=QLocale::LongFormat

$prototype=QString dayName ( int day, FormatType type = LongFormat ) const
$method=|QString|dayName|int,QLocale::FormatType=QLocale::LongFormat

$prototype=QChar decimalPoint () const
$method=|QChar|decimalPoint|

$prototype=QChar exponential () const
$method=|QChar|exponential|

$prototype=Qt::DayOfWeek firstDayOfWeek () const
$method=|Qt::DayOfWeek|firstDayOfWeek|

$prototype=QChar groupSeparator () const
$method=|QChar|groupSeparator|

$prototype=Language language () const
$method=|QLocale::Language|language|

$prototype=MeasurementSystem measurementSystem () const
$method=|QLocale::MeasurementSystem|measurementSystem|

$prototype=QString monthName ( int month, FormatType type = LongFormat ) const
$method=|QString|monthName|int,QLocale::FormatType=QLocale::LongFormat

$prototype=QString name () const
$method=|QString|name|

$prototype=QString nativeCountryName () const
$method=|QString|nativeCountryName|

$prototype=QString nativeLanguageName () const
$method=|QString|nativeLanguageName|

$prototype=QChar negativeSign () const
$method=|QChar|negativeSign|

$prototype=NumberOptions numberOptions () const
$method=|QLocale::NumberOptions|numberOptions|

$prototype=QChar percent () const
$method=|QChar|percent|

$prototype=QString pmText () const
$method=|QString|pmText|

$prototype=QChar positiveSign () const
$method=|QChar|positiveSign|

$prototype=QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
$method=|QString|quoteString,quoteString1|const QString &,QLocale::QuotationStyle=QLocale::StandardQuotation

$prototype=QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const
$method=|QString|quoteString,quoteString2|const QStringRef &,QLocale::QuotationStyle=QLocale::StandardQuotation

//[1]QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
//[2]QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const

%% TODO: resolver caso do QStringRef

HB_FUNC_STATIC( QLOCALE_QUOTESTRING )
{
  HB_FUNC_EXEC( QLOCALE_QUOTESTRING1 );
}
$addMethod=quoteString

$prototype=Script script () const
$method=|QLocale::Script|script|

$prototype=void setNumberOptions ( NumberOptions options )
$method=|void|setNumberOptions|QLocale::NumberOptions

$prototype=QString standaloneDayName ( int day, FormatType type = LongFormat ) const
$method=|QString|standaloneDayName|int,QLocale::FormatType=QLocale::LongFormat

$prototype=QString standaloneMonthName ( int month, FormatType type = LongFormat ) const
$method=|QString|standaloneMonthName|int,QLocale::FormatType=QLocale::LongFormat

$prototype=Qt::LayoutDirection textDirection () const
$method=|Qt::LayoutDirection|textDirection|

$prototype=QString timeFormat ( FormatType format = LongFormat ) const
$method=|QString|timeFormat|QLocale::FormatType=QLocale::LongFormat

$prototype=QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString1|qlonglong,const QString &=QString()

$prototype=QString toCurrencyString ( short value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString2|short,const QString &=QString()

$prototype=QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString3|ushort,const QString &=QString()

$prototype=QString toCurrencyString ( int value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString4|int,const QString &=QString()

$prototype=QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString5|uint,const QString &=QString()

$prototype=QString toCurrencyString ( float value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString6|float,const QString &=QString()

$prototype=QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString7|qulonglong,const QString &=QString()

$prototype=QString toCurrencyString ( double value, const QString & symbol = QString() ) const
$method=|QString|toCurrencyString,toCurrencyString8|double,const QString &=QString()

//[1]QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
//[2]QString toCurrencyString ( short value, const QString & symbol = QString() ) const
//[3]QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
//[4]QString toCurrencyString ( int value, const QString & symbol = QString() ) const
//[5]QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
//[6]QString toCurrencyString ( float value, const QString & symbol = QString() ) const
//[7]QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
//[8]QString toCurrencyString ( double value, const QString & symbol = QString() ) const

%% TODO: verificar se é possível identificar o valor passado como parâmetro

HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING )
{
}
$addMethod=toCurrencyString

$prototype=QDate toDate ( const QString & string, FormatType format = LongFormat ) const
$internalMethod=|QDate|toDate,toDate1|const QString &,QLocale::FormatType=QLocale::LongFormat

$prototype=QDate toDate ( const QString & string, const QString & format ) const
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
$addMethod=toDate

$prototype=QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
$internalMethod=|QDateTime|toDateTime,toDateTime1|const QString &,QLocale::FormatType=QLocale::LongFormat

$prototype=QDateTime toDateTime ( const QString & string, const QString & format ) const
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
$addMethod=toDateTime

$prototype=double toDouble ( const QString & s, bool * ok = 0 ) const
%% TODO: implementar parametro opcional
$method=|double|toDouble|const QString &,bool *=0

$prototype=float toFloat ( const QString & s, bool * ok = 0 ) const
%% TODO: implementar parametro opcional
$method=|float|toFloat|const QString &,bool *=0

$prototype=QString toLower ( const QString & str ) const
$method=|QString|toLower|const QString &

$prototype=QString toString ( qlonglong i ) const
$method=|QString|toString,toString1|qlonglong

$prototype=QString toString ( const QDate & date, const QString & format ) const
$method=|QString|toString,toString2|const QDate &,const QString &

$prototype=QString toString ( const QDate & date, FormatType format = LongFormat ) const
$method=|QString|toString,toString3|const QDate &,QLocale::FormatType=QLocale::LongFormat

$prototype=QString toString ( const QTime & time, const QString & format ) const
$method=|QString|toString,toString4|const QTime &,const QString &

$prototype=QString toString ( const QTime & time, FormatType format = LongFormat ) const
$method=|QString|toString,toString5|const QTime &,QLocale::FormatType=QLocale::LongFormat

$prototype=QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
$method=|QString|toString,toString6|const QDateTime &,QLocale::FormatType=QLocale::LongFormat

$prototype=QString toString ( const QDateTime & dateTime, const QString & format ) const
$method=|QString|toString,toString7|const QDateTime &,const QString &

$prototype=QString toString ( short i ) const
$method=|QString|toString,toString8|short

$prototype=QString toString ( ushort i ) const
$method=|QString|toString,toString9|ushort

$prototype=QString toString ( int i ) const
$method=|QString|toString,toString10|int

$prototype=QString toString ( uint i ) const
$method=|QString|toString,toString11|uint

$prototype=QString toString ( float i, char f = 'g', int prec = 6 ) const
$method=|QString|toString,toString12|float,char='g',int=6

$prototype=QString toString ( qulonglong i ) const
$method=|QString|toString,toString13|qulonglong

$prototype=QString toString ( double i, char f = 'g', int prec = 6 ) const
$method=|QString|toString,toString14|double,char='g',int=6

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

%% TODO: implementar verificação dos parâmetros

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
$addMethod=toString

$prototype=QTime toTime ( const QString & string, FormatType format = LongFormat ) const
$internalMethod=|QTime|toTime,toTime1|const QString &,QLocale::FormatType=QLocale::LongFormat

$prototype=QTime toTime ( const QString & string, const QString & format ) const
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
$addMethod=toTime

$prototype=QString toUpper ( const QString & str ) const
$method=|QString|toUpper|const QString &

$prototype=QStringList uiLanguages () const
$method=|QStringList|uiLanguages|

$prototype=QList<Qt::DayOfWeek> weekdays () const
$method=|QList<Qt::DayOfWeek>|weekdays|

$prototype=QChar zeroDigit () const
$method=|QChar|zeroDigit|

$prototype=static QLocale c ()
$staticMethod=|QLocale|c|

$prototype=static QString countryToString ( Country country )
$staticMethod=|QString|countryToString|QLocale::Country

$prototype=static QString languageToString ( Language language )
$staticMethod=|QString|languageToString|QLocale::Language

$prototype=static QList<QLocale> matchingLocales ( QLocale::Language language, QLocale::Script script, QLocale::Country country )
$staticMethod=|QList<QLocale>|matchingLocales|QLocale::Language,QLocale::Script,QLocale::Country

$prototype=static QString scriptToString ( Script script )
$staticMethod=|QString|scriptToString|QLocale::Script

$prototype=static void setDefault ( const QLocale & locale )
$staticMethod=|void|setDefault|const QLocale &

$prototype=static QLocale system ()
$staticMethod=|QLocale|system|

$extraMethods

#pragma ENDDUMP
