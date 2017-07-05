$header

#include "hbclass.ch"

CLASS QMetaType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD registerTypedef
   METHOD type
   METHOD typeName
   METHOD isRegistered
   METHOD construct
   METHOD destroy
   METHOD save
   METHOD load

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
static int registerTypedef(const char *typeName, int aliasId)
*/
$staticMethod=|int|registerTypedef|const char *,int

/*
static int type(const char *typeName)
*/
$staticMethod=|int|type|const char *

/*
static const char *typeName(int type)
*/
$staticMethod=|const char *|typeName|int

/*
static bool isRegistered(int type)
*/
$staticMethod=|bool|isRegistered|int

/*
static void *construct(int type, void *where, const void *copy)
*/
HB_FUNC_STATIC( QMETATYPE_CONSTRUCT )
{
  if( ISNUM(1) && ISPOINTER(2) && ISPOINTER(3) )
  {
    hb_retptr( (void *) QMetaType::construct ( PINT(1), (void *) hb_parptr(2), (const void *) hb_parptr(3) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void destroy(int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_DESTROY )
{
  if( ISNUM(1) && ISPOINTER(2) )
  {
    QMetaType::destroy ( PINT(1), (void *) hb_parptr(2) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool save(QDataStream &stream, int type, const void *data)
*/
HB_FUNC_STATIC( QMETATYPE_SAVE )
{
  if( ISQDATASTREAM(1) && ISNUM(2) && ISPOINTER(3) )
  {
    QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
    const void * par3 = (const void *) hb_parptr(3);
    RBOOL( QMetaType::save ( *par1, PINT(2), par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool load(QDataStream &stream, int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_LOAD )
{
  if( ISQDATASTREAM(1) && ISNUM(2) && ISPOINTER(3) )
  {
    QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
    void * par3 = (void *) hb_parptr(3);
    RBOOL( QMetaType::load ( *par1, PINT(2), par3 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
