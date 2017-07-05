$header

#include "hbclass.ch"

CLASS QDebug

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new4
   METHOD new
   METHOD delete
   METHOD swap
   METHOD space
   METHOD nospace
   METHOD maybeSpace
   METHOD autoInsertSpaces
   METHOD setAutoInsertSpaces

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
QDebug(QIODevice *device)
*/
HB_FUNC_STATIC( QDEBUG_NEW1 )
{
  QDebug * o = new QDebug ( PQIODEVICE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDebug(QString *string)
*/
HB_FUNC_STATIC( QDEBUG_NEW2 ) // TODO: implementar
{
  QDebug * o = new QDebug ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDebug(QtMsgType t)
*/
HB_FUNC_STATIC( QDEBUG_NEW3 )
{
  QDebug * o = new QDebug ( (QtMsgType) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDebug(const QDebug &o)
*/
HB_FUNC_STATIC( QDEBUG_NEW4 )
{
  QDebug * o = new QDebug ( *PQDEBUG(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QDebug(QIODevice *device)
//[2]QDebug(QString *string)
//[3]QDebug(QtMsgType t)
//[4]QDebug(const QDebug &o)

HB_FUNC_STATIC( QDEBUG_NEW )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSTRING(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QDebug &other)
*/
$method=|void|swap|QDebug &

/*
QDebug &space()
*/
HB_FUNC_STATIC( QDEBUG_SPACE )
{
  QDebug * obj = (QDebug *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDebug * ptr = &obj->space ();
    _qt5xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}

/*
QDebug &nospace()
*/
HB_FUNC_STATIC( QDEBUG_NOSPACE )
{
  QDebug * obj = (QDebug *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDebug * ptr = &obj->nospace ();
    _qt5xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}

/*
QDebug &maybeSpace()
*/
HB_FUNC_STATIC( QDEBUG_MAYBESPACE )
{
  QDebug * obj = (QDebug *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDebug * ptr = &obj->maybeSpace ();
    _qt5xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}

/*
bool autoInsertSpaces() const
*/
$method=|bool|autoInsertSpaces|

/*
void setAutoInsertSpaces(bool b)
*/
$method=|void|setAutoInsertSpaces|bool

$extraMethods

#pragma ENDDUMP
