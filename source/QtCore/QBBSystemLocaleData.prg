/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QLOCALE

CLASS QBBSystemLocaleData INHERIT QObject

   DATA class_id INIT Class_Id_QBBSystemLocaleData
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD measurementSystem
   METHOD timeFormat
   METHOD dateTimeFormat
   METHOD languageLocale
   METHOD regionLocale
   METHOD installSocketNotifiers
   METHOD readLanguageLocale
   METHOD readRegionLocale
   METHOD readMeasurementSystem
   METHOD readHourFormat
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBBSystemLocaleData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QBBSystemLocaleData>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QBBSystemLocaleData>
#endif
#endif

/*
QBBSystemLocaleData()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBBSystemLocaleData * o = new QBBSystemLocaleData (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBBSystemLocaleData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
uint measurementSystem()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_MEASUREMENTSYSTEM )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->measurementSystem (  ) );
  }
}


/*
QVariant timeFormat(QLocale::FormatType)
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_TIMEFORMAT )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->timeFormat (  (QLocale::FormatType) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QVariant dateTimeFormat(QLocale::FormatType)
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_DATETIMEFORMAT )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->dateTimeFormat (  (QLocale::FormatType) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QLocale languageLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_LANGUAGELOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->languageLocale (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
QLocale regionLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_REGIONLOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->regionLocale (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}



/*
void installSocketNotifiers()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_INSTALLSOCKETNOTIFIERS )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->installSocketNotifiers (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void readLanguageLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READLANGUAGELOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->readLanguageLocale (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void readRegionLocale()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READREGIONLOCALE )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->readRegionLocale (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void readMeasurementSystem()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READMEASUREMENTSYSTEM )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->readMeasurementSystem (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void readHourFormat()
*/
HB_FUNC_STATIC( QBBSYSTEMLOCALEDATA_READHOURFORMAT )
{
  QBBSystemLocaleData * obj = (QBBSystemLocaleData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->readHourFormat (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
