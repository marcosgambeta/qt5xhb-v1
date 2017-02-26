/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QTimeZone

   DATA pointer
   DATA class_id INIT Class_Id_QTimeZone
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD id
   METHOD country
   METHOD comment
   METHOD displayName1
   METHOD displayName2
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
   METHOD windowsIdToDefaultIanaId1
   METHOD windowsIdToDefaultIanaId2
   METHOD windowsIdToDefaultIanaId
   METHOD windowsIdToIanaIds1
   METHOD windowsIdToIanaIds2
   METHOD windowsIdToIanaIds
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimeZone
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QTimeZone>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QTimeZone>
#endif
#endif

/*
QTimeZone()
*/
HB_FUNC_STATIC( QTIMEZONE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * o = new QTimeZone (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTimeZone *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTimeZone(const QByteArray &ianaId)
*/
HB_FUNC_STATIC( QTIMEZONE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QTimeZone * o = new QTimeZone ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTimeZone *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTimeZone(int offsetSeconds)
*/
HB_FUNC_STATIC( QTIMEZONE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par1 = hb_parni(1);
  QTimeZone * o = new QTimeZone ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTimeZone *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTimeZone(const QByteArray &zoneId, int offsetSeconds, const QString &name,const QString &abbreviation, QLocale::Country country = QLocale::AnyCountry,const QString &comment = QString())
*/
HB_FUNC_STATIC( QTIMEZONE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QString par3 = QLatin1String( hb_parc(3) );
  QString par4 = QLatin1String( hb_parc(4) );
  int par5 = ISNIL(5)? (int) QLocale::AnyCountry : hb_parni(5);
  QString par6 = ISNIL(6)? QString() : QLatin1String( hb_parc(6) );
  QTimeZone * o = new QTimeZone ( *par1, par2, par3, par4,  (QLocale::Country) par5, par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTimeZone *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QTimeZone(const QTimeZone &other)
*/
HB_FUNC_STATIC( QTIMEZONE_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * par1 = (QTimeZone *) _qtxhb_itemGetPtr(1);
  QTimeZone * o = new QTimeZone ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTimeZone *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    HB_FUNC_EXEC( QTIMEZONE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_NEW3 );
  }
  else if( ISBETWEEN(4,6) && ISQBYTEARRAY(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && (ISNUM(5)||ISNIL(5)) && (ISCHAR(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QTIMEZONE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQTIMEZONE(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIMEZONE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QTimeZone &other)
*/
HB_FUNC_STATIC( QTIMEZONE_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTimeZone * par1 = (QTimeZone *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QTIMEZONE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
QByteArray id() const
*/
HB_FUNC_STATIC( QTIMEZONE_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->id (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
QLocale::Country country() const
*/
HB_FUNC_STATIC( QTIMEZONE_COUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->country (  ) );
  }
#endif
}


/*
QString comment() const
*/
HB_FUNC_STATIC( QTIMEZONE_COMMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->comment (  ).toLatin1().data() );
  }
#endif
}


/*
QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/
HB_FUNC_STATIC( QTIMEZONE_DISPLAYNAME1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QTimeZone::DefaultName : hb_parni(2);
    QLocale par3 = ISNIL(3)? QLocale() : *(QLocale *) _qtxhb_itemGetPtr(3);
    hb_retc( (const char *) obj->displayName ( *par1,  (QTimeZone::NameType) par2, par3 ).toLatin1().data() );
  }
#endif
}

/*
QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/
HB_FUNC_STATIC( QTIMEZONE_DISPLAYNAME2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTimeZone::DefaultName : hb_parni(2);
    QLocale par3 = ISNIL(3)? QLocale() : *(QLocale *) _qtxhb_itemGetPtr(3);
    hb_retc( (const char *) obj->displayName (  (QTimeZone::TimeType) par1,  (QTimeZone::NameType) par2, par3 ).toLatin1().data() );
  }
#endif
}


//[1]QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
//[2]QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const

HB_FUNC_STATIC( QTIMEZONE_DISPLAYNAME )
{
  if( ISBETWEEN(1,3) && ISQDATETIME(1) && (ISNUM(2)||ISNIL(2)) && (ISQLOCALE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTIMEZONE_DISPLAYNAME1 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISQLOCALE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTIMEZONE_DISPLAYNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString abbreviation(const QDateTime &atDateTime) const
*/
HB_FUNC_STATIC( QTIMEZONE_ABBREVIATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    hb_retc( (const char *) obj->abbreviation ( *par1 ).toLatin1().data() );
  }
#endif
}


/*
int offsetFromUtc(const QDateTime &atDateTime) const
*/
HB_FUNC_STATIC( QTIMEZONE_OFFSETFROMUTC )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->offsetFromUtc ( *par1 ) );
  }
#endif
}


/*
int standardTimeOffset(const QDateTime &atDateTime) const
*/
HB_FUNC_STATIC( QTIMEZONE_STANDARDTIMEOFFSET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->standardTimeOffset ( *par1 ) );
  }
#endif
}


/*
int daylightTimeOffset(const QDateTime &atDateTime) const
*/
HB_FUNC_STATIC( QTIMEZONE_DAYLIGHTTIMEOFFSET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->daylightTimeOffset ( *par1 ) );
  }
#endif
}


/*
bool hasDaylightTime() const
*/
HB_FUNC_STATIC( QTIMEZONE_HASDAYLIGHTTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasDaylightTime (  ) );
  }
#endif
}


/*
bool isDaylightTime(const QDateTime &atDateTime) const
*/
HB_FUNC_STATIC( QTIMEZONE_ISDAYLIGHTTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isDaylightTime ( *par1 ) );
  }
#endif
}



/*
bool hasTransitions() const
*/
HB_FUNC_STATIC( QTIMEZONE_HASTRANSITIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasTransitions (  ) );
  }
#endif
}





/*
static QByteArray systemTimeZoneId()
*/
HB_FUNC_STATIC( QTIMEZONE_SYSTEMTIMEZONEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * ptr = new QByteArray( QTimeZone::systemTimeZoneId (  ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}


/*
static bool isTimeZoneIdAvailable(const QByteArray &ianaId)
*/
HB_FUNC_STATIC( QTIMEZONE_ISTIMEZONEIDAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  hb_retl( QTimeZone::isTimeZoneIdAvailable ( *par1 ) );
#endif
}


/*
static QList<QByteArray> availableTimeZoneIds()
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QByteArray> list = QTimeZone::availableTimeZoneIds (  );
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
  int par1 = hb_parni(1);
  QList<QByteArray> list = QTimeZone::availableTimeZoneIds (  (QLocale::Country) par1 );
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
static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QByteArray> list = QTimeZone::availableTimeZoneIds ( (int) hb_parni(1) );
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


//[1]static QList<QByteArray> availableTimeZoneIds()
//[2]static QList<QByteArray> availableTimeZoneIds(QLocale::Country country)
//[3]static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)

HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) ) // TODO: resolver conflito com caso [2]
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
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray * ptr = new QByteArray( QTimeZone::ianaIdToWindowsId ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}


/*
static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
*/
HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QByteArray * ptr = new QByteArray( QTimeZone::windowsIdToDefaultIanaId ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}

/*
static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)
*/
HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QByteArray * ptr = new QByteArray( QTimeZone::windowsIdToDefaultIanaId ( *par1,  (QLocale::Country) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}


//[1]static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
//[2]static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId)
*/
HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTOIANAIDS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QList<QByteArray> list = QTimeZone::windowsIdToIanaIds ( *par1 );
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
HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTOIANAIDS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QList<QByteArray> list = QTimeZone::windowsIdToIanaIds ( *par1,  (QLocale::Country) par2 );
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
    HB_FUNC_EXEC( QTIMEZONE_WINDOWSIDTOIANAIDS1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTIMEZONE_WINDOWSIDTOIANAIDS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QTIMEZONE_NEWFROM )
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

HB_FUNC_STATIC( QTIMEZONE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTIMEZONE_NEWFROM );
}

HB_FUNC_STATIC( QTIMEZONE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTIMEZONE_NEWFROM );
}

HB_FUNC_STATIC( QTIMEZONE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTIMEZONE_SETSELFDESTRUCTION )
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