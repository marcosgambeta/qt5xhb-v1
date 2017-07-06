$header

#include "hbclass.ch"

CLASS QDBusObjectPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD path
   METHOD setPath

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

/*
QDBusObjectPath()
*/
HB_FUNC_STATIC( QDBUSOBJECTPATH_NEW1 )
{
  QDBusObjectPath * o = new QDBusObjectPath ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusObjectPath(const char *path)
*/
HB_FUNC_STATIC( QDBUSOBJECTPATH_NEW2 )
{
  QDBusObjectPath * o = new QDBusObjectPath ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusObjectPath(QLatin1String path)
*/
HB_FUNC_STATIC( QDBUSOBJECTPATH_NEW3 )
{
  QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
  QDBusObjectPath * o = new QDBusObjectPath ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusObjectPath(const QString &path)
*/
HB_FUNC_STATIC( QDBUSOBJECTPATH_NEW4 )
{
  QDBusObjectPath * o = new QDBusObjectPath ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusObjectPath()
//[2]explicit QDBusObjectPath(const char *path)
//[3]explicit QDBusObjectPath(QLatin1String path)
//[4]explicit QDBusObjectPath(const QString &path)

// TODO: resolver conflitos entre [2], [3] e [4]

HB_FUNC( QDBUSOBJECTPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString path() const
*/
HB_FUNC_STATIC( QDBUSOBJECTPATH_PATH )
{
  QDBusObjectPath * obj = (QDBusObjectPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->path () );
  }
}

/*
void setPath(const QString &path)
*/
HB_FUNC_STATIC( QDBUSOBJECTPATH_SETPATH )
{
  QDBusObjectPath * obj = (QDBusObjectPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
