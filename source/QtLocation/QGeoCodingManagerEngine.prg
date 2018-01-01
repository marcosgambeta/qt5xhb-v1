/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode1
   METHOD geocode2
   METHOD geocode
   METHOD reverseGeocode
   METHOD setLocale
   METHOD locale

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoCodingManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodingManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodingManagerEngine>
#endif
#endif

#include <QLocale>


HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString managerName() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->managerName () );
  }
#endif
}


/*
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->managerVersion () );
  }
#endif
}


/*
virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCodeReply * ptr = obj->geocode ( *PQGEOADDRESS(1), *PQGEOSHAPE(2) );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * par4 = (QGeoShape *) _qt5xhb_itemGetPtr(4);
    QGeoCodeReply * ptr = obj->geocode ( PQSTRING(1), PINT(2), PINT(3), *par4 );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}


//[1]virtual QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds)
//[2]virtual QGeoCodeReply *geocode(const QString &address, int limit, int offset, const QGeoShape &bounds)

HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_GEOCODE )
{
  if( ISNUMPAR(2) && ISQGEOADDRESS(1) && ISQGEOSHAPE(2) )
  {
    HB_FUNC_EXEC( QGEOCODINGMANAGERENGINE_GEOCODE1 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISQGEOSHAPE(4) )
  {
    HB_FUNC_EXEC( QGEOCODINGMANAGERENGINE_GEOCODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCodeReply * ptr = obj->reverseGeocode ( *PQGEOCOORDINATE(1), *PQGEOSHAPE(2) );
    _qt5xhb_createReturnClass ( ptr, "QGEOCODEREPLY" );
  }
#endif
}


/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGERENGINE_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerEngine * obj = (QGeoCodingManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
#endif
}




#pragma ENDDUMP
