/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMEDIAOBJECT

CLASS QRadioData INHERIT QObject,QMediaBindableInterface

   DATA class_id INIT Class_Id_QRadioData
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD availability
   METHOD mediaObject
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD isAlternativeFrequenciesEnabled
   METHOD error
   METHOD errorString
   METHOD setAlternativeFrequenciesEnabled
   METHOD onStationIdChanged
   METHOD onProgramTypeChanged
   METHOD onProgramTypeNameChanged
   METHOD onStationNameChanged
   METHOD onRadioTextChanged
   METHOD onAlternativeFrequenciesEnabledChanged
   METHOD onError
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QRadioData>
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
#include <QRadioData>
#endif
#endif

/*
QRadioData(QMediaObject *mediaObject, QObject *parent = 0)
*/
HB_FUNC_STATIC( QRADIODATA_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaObject * par1 = (QMediaObject *) _qtxhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QRadioData * o = new QRadioData ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadioData *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QRADIODATA_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRadioData * obj = (QRadioData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QRADIODATA_AVAILABILITY )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability (  ) );
  }
}


/*
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QRADIODATA_MEDIAOBJECT )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
QString stationId() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONID )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->stationId (  ).toLatin1().data() );
  }
}


/*
ProgramType programType() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPE )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->programType (  ) );
  }
}


/*
QString programTypeName() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPENAME )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->programTypeName (  ).toLatin1().data() );
  }
}


/*
QString stationName() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONNAME )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->stationName (  ).toLatin1().data() );
  }
}


/*
QString radioText() const
*/
HB_FUNC_STATIC( QRADIODATA_RADIOTEXT )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->radioText (  ).toLatin1().data() );
  }
}


/*
bool isAlternativeFrequenciesEnabled() const
*/
HB_FUNC_STATIC( QRADIODATA_ISALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAlternativeFrequenciesEnabled (  ) );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QRADIODATA_ERROR )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QRADIODATA_ERRORSTRING )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
void setAlternativeFrequenciesEnabled(bool enabled)
*/
HB_FUNC_STATIC( QRADIODATA_SETALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlternativeFrequenciesEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
