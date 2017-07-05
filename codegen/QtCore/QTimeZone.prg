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
void QTimeZone_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * o = new QTimeZone ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QTimeZone(const QByteArray &ianaId)
*/
void QTimeZone_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * o = new QTimeZone ( *PQBYTEARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QTimeZone(int offsetSeconds)
*/
void QTimeZone_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * o = new QTimeZone ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QTimeZone(const QByteArray &zoneId, int offsetSeconds, const QString &name,const QString &abbreviation, QLocale::Country country = QLocale::AnyCountry,const QString &comment = QString())
*/
void QTimeZone_new4 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par5 = ISNIL(5)? (int) QLocale::AnyCountry : hb_parni(5);
  QTimeZone * o = new QTimeZone ( *PQBYTEARRAY(1), PINT(2), PQSTRING(3), PQSTRING(4), (QLocale::Country) par5, OPQSTRING(6,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QTimeZone(const QTimeZone &other)
*/
void QTimeZone_new5 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * o = new QTimeZone ( *PQTIMEZONE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

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
HB_FUNC_STATIC( QTIMEZONE_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTIMEZONE(1) )
    {
      QTimeZone * par1 = (QTimeZone *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
QByteArray id() const
*/
HB_FUNC_STATIC( QTIMEZONE_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->id () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}

/*
QLocale::Country country() const
*/
HB_FUNC_STATIC( QTIMEZONE_COUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->country () );
  }
#endif
}

/*
QString comment() const
*/
$method=5,2,0|QString|comment|

/*
QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/
void QTimeZone_displayName1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTimeZone::DefaultName : hb_parni(2);
    QLocale par3 = ISNIL(3)? QLocale() : *(QLocale *) _qt5xhb_itemGetPtr(3);
    RQSTRING( obj->displayName ( *PQDATETIME(1), (QTimeZone::NameType) par2, par3 ) );
  }
#endif
}

/*
QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/
void QTimeZone_displayName2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTimeZone::DefaultName : hb_parni(2);
    QLocale par3 = ISNIL(3)? QLocale() : *(QLocale *) _qt5xhb_itemGetPtr(3);
    RQSTRING( obj->displayName ( (QTimeZone::TimeType) hb_parni(1), (QTimeZone::NameType) par2, par3 ) );
  }
#endif
}

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
HB_FUNC_STATIC( QTIMEZONE_SYSTEMTIMEZONEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * ptr = new QByteArray( QTimeZone::systemTimeZoneId () );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}

/*
static bool isTimeZoneIdAvailable(const QByteArray &ianaId)
*/
$staticMethod=5,2,0|bool|isTimeZoneIdAvailable|const QByteArray &

/*
static QList<QByteArray> availableTimeZoneIds()
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QByteArray> list = QTimeZone::availableTimeZoneIds ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}

/*
static QList<QByteArray> availableTimeZoneIds(QLocale::Country country)
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUM(1) )
  {
    QList<QByteArray> list = QTimeZone::availableTimeZoneIds ( (QLocale::Country) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
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
#endif
}

/*
static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUM(1) )
  {
    QList<QByteArray> list = QTimeZone::availableTimeZoneIds ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
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
#endif
}

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
HB_FUNC_STATIC( QTIMEZONE_IANAIDTOWINDOWSID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISQBYTEARRAY(1) )
  {
    QByteArray * ptr = new QByteArray( QTimeZone::ianaIdToWindowsId ( *PQBYTEARRAY(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
*/
void QTimeZone_windowsIdToDefaultIanaId1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * ptr = new QByteArray( QTimeZone::windowsIdToDefaultIanaId ( *PQBYTEARRAY(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}

/*
static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)
*/
void QTimeZone_windowsIdToDefaultIanaId2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * ptr = new QByteArray( QTimeZone::windowsIdToDefaultIanaId ( *PQBYTEARRAY(1), (QLocale::Country) hb_parni(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}

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
void QTimeZone_windowsIdToIanaIds1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QByteArray> list = QTimeZone::windowsIdToIanaIds ( *PQBYTEARRAY(1) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}

/*
static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId,QLocale::Country country)
*/
void QTimeZone_windowsIdToIanaIds2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QByteArray> list = QTimeZone::windowsIdToIanaIds ( *PQBYTEARRAY(1), (QLocale::Country) hb_parni(2) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}

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
