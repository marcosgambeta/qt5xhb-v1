$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QTimeZone

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD id
   METHOD country
   METHOD comment
   METHOD displayName
   METHOD abbreviation
   METHOD offsetFromUtc
   METHOD standardTimeOffset
   METHOD daylightTimeOffset
   METHOD hasDaylightTime
   METHOD isDaylightTime
   METHOD hasTransitions
   METHOD systemTimeZoneId
   METHOD isTimeZoneIdAvailable
   METHOD availableTimeZoneIds1
   METHOD availableTimeZoneIds2
   METHOD availableTimeZoneIds3
   METHOD availableTimeZoneIds
   METHOD ianaIdToWindowsId
   METHOD windowsIdToDefaultIanaId
   METHOD windowsIdToIanaIds

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QTimeZone()
*/
$internalConstructor=5,2,0|new1|

/*
QTimeZone(const QByteArray &ianaId)
*/
$internalConstructor=5,2,0|new2|const QByteArray &

/*
QTimeZone(int offsetSeconds)
*/
$internalConstructor=5,2,0|new3|int

/*
QTimeZone(const QByteArray &zoneId, int offsetSeconds, const QString &name,const QString &abbreviation, QLocale::Country country = QLocale::AnyCountry,const QString &comment = QString())
*/
$internalConstructor=5,2,0|new4|const QByteArray &,int,const QString &,const QString &,QLocale::Country=QLocale::AnyCountry,const QString &=QString()

/*
QTimeZone(const QTimeZone &other)
*/
$internalConstructor=5,2,0|new5|const QTimeZone &

//[1]QTimeZone()
//[2]QTimeZone(const QByteArray &ianaId)
//[3]QTimeZone(int offsetSeconds)
//[4]QTimeZone(const QByteArray &zoneId, int offsetSeconds, const QString &name,const QString &abbreviation, QLocale::Country country = QLocale::AnyCountry,const QString &comment = QString())
//[5]QTimeZone(const QTimeZone &other)

HB_FUNC_STATIC( QTIMEZONE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTimeZone_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTimeZone_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimeZone_new3();
  }
  else if( ISBETWEEN(4,6) && ISQBYTEARRAY(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && ISOPTNUM(5) && ISOPTCHAR(6) )
  {
    QTimeZone_new4();
  }
  else if( ISNUMPAR(1) && ISQTIMEZONE(1) )
  {
    QTimeZone_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
void swap(QTimeZone &other)
*/
$method=5,2,0|void|swap|QTimeZone &

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
QByteArray id() const
*/
$method=5,2,0|QByteArray|id|

/*
QLocale::Country country() const
*/
$method=5,2,0|QLocale::Country|country|

/*
QString comment() const
*/
$method=5,2,0|QString|comment|

/*
QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/
$internalMethod=5,2,0|QString|displayName,displayName1|const QDateTime &,QTimeZone::NameType=QTimeZone::DefaultName,const QLocale &=QLocale()

/*
QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/
$internalMethod=5,2,0|QString|displayName,displayName2|QTimeZone::TimeType,QTimeZone::NameType=QTimeZone::DefaultName,const QLocale &=QLocale()

//[1]QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
//[2]QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const

HB_FUNC_STATIC( QTIMEZONE_DISPLAYNAME )
{
  if( ISBETWEEN(1,3) && ISQDATETIME(1) && ISOPTNUM(2) && (ISQLOCALE(3)||ISNIL(3)) )
  {
    QTimeZone_displayName1();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && (ISQLOCALE(3)||ISNIL(3)) )
  {
    QTimeZone_displayName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString abbreviation(const QDateTime &atDateTime) const
*/
$method=5,2,0|QString|abbreviation|const QDateTime &

/*
int offsetFromUtc(const QDateTime &atDateTime) const
*/
$method=5,2,0|int|offsetFromUtc|const QDateTime &

/*
int standardTimeOffset(const QDateTime &atDateTime) const
*/
$method=5,2,0|int|standardTimeOffset|const QDateTime &

/*
int daylightTimeOffset(const QDateTime &atDateTime) const
*/
$method=5,2,0|int|daylightTimeOffset|const QDateTime &

/*
bool hasDaylightTime() const
*/
$method=5,2,0|bool|hasDaylightTime|

/*
bool isDaylightTime(const QDateTime &atDateTime) const
*/
$method=5,2,0|bool|isDaylightTime|const QDateTime &

/*
bool hasTransitions() const
*/
$method=5,2,0|bool|hasTransitions|

/*
static QByteArray systemTimeZoneId()
*/
$staticMethod=5,2,0|QByteArray|systemTimeZoneId|

/*
static bool isTimeZoneIdAvailable(const QByteArray &ianaId)
*/
$staticMethod=5,2,0|bool|isTimeZoneIdAvailable|const QByteArray &

/*
static QList<QByteArray> availableTimeZoneIds()
*/
$staticMethod=5,2,0|QList<QByteArray>|availableTimeZoneIds,availableTimeZoneIds1|

/*
static QList<QByteArray> availableTimeZoneIds(QLocale::Country country)
*/
$staticMethod=5,2,0|QList<QByteArray>|availableTimeZoneIds,availableTimeZoneIds2|QLocale::Country

/*
static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)
*/
$staticMethod=5,2,0|QList<QByteArray>|availableTimeZoneIds,availableTimeZoneIds3|int

//[1]static QList<QByteArray> availableTimeZoneIds()
//[2]static QList<QByteArray> availableTimeZoneIds(QLocale::Country country)
//[3]static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)

HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS ) // TODO: resolver conflito entre [2] e [3]
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray ianaIdToWindowsId(const QByteArray &ianaId)
*/
$staticMethod=5,2,0|QByteArray|ianaIdToWindowsId|const QByteArray &

/*
static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
*/
$staticInternalMethod=5,2,0|QByteArray|windowsIdToDefaultIanaId,windowsIdToDefaultIanaId1|const QByteArray &

/*
static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)
*/
$staticInternalMethod=5,2,0|QByteArray|windowsIdToDefaultIanaId,windowsIdToDefaultIanaId2|const QByteArray &,QLocale::Country

//[1]static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
//[2]static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTimeZone_windowsIdToDefaultIanaId1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QTimeZone_windowsIdToDefaultIanaId2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId)
*/
$staticInternalMethod=5,2,0|QList<QByteArray>|windowsIdToIanaIds,windowsIdToIanaIds1|const QByteArray &

/*
static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId,QLocale::Country country)
*/
$staticInternalMethod=5,2,0|QList<QByteArray>|windowsIdToIanaIds,windowsIdToIanaIds2|const QByteArray &,QLocale::Country

//[1]static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId)
//[2]static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId,QLocale::Country country)

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTOIANAIDS )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTimeZone_windowsIdToIanaIds1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QTimeZone_windowsIdToIanaIds2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
