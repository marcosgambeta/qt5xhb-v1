$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QDATETIME
#endif

CLASS QGeoAreaMonitorInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD identifier
   METHOD isValid
   METHOD area
   METHOD setArea
   METHOD expiration
   METHOD setExpiration
   METHOD isPersistent
   METHOD setPersistent

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

#include <QDateTime>

/*
QGeoAreaMonitorInfo(const QString &name = QString())
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * o = new QGeoAreaMonitorInfo ( OPQSTRING(1,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * o = new QGeoAreaMonitorInfo ( *PQGEOAREAMONITORINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoAreaMonitorInfo(const QString &name = QString())
//[2]QGeoAreaMonitorInfo(const QGeoAreaMonitorInfo &other)

HB_FUNC_STATIC( QGEOAREAMONITORINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QString name() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
#endif
}


/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString identifier() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->identifier () );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
QGeoShape area() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_AREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * ptr = new QGeoShape( obj->area () );
    _qt5xhb_createReturnClass ( ptr, "QGEOSHAPE", true );
  }
#endif
}


/*
void setArea(const QGeoShape &newShape)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETAREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setArea ( *PQGEOSHAPE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QDateTime expiration() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_EXPIRATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expiration () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}


/*
void setExpiration(const QDateTime &expiry)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETEXPIRATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExpiration ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isPersistent() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_ISPERSISTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isPersistent () );
  }
#endif
}


/*
void setPersistent(bool isPersistent)
*/
HB_FUNC_STATIC( QGEOAREAMONITORINFO_SETPERSISTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorInfo * obj = (QGeoAreaMonitorInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPersistent ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}





$extraMethods

#pragma ENDDUMP
