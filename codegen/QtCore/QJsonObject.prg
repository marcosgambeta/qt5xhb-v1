$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONVALUE
#endif

CLASS QJsonObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contains
   METHOD count
   METHOD empty
   METHOD isEmpty
   METHOD keys
   METHOD length
   METHOD remove
   METHOD size
   METHOD take
   METHOD value

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

#include <QStringList>

/*
QJsonObject()
*/
void QJsonObject_new1 ()
{
  QJsonObject * o = new QJsonObject ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonObject(const QJsonObject & other)
*/
void QJsonObject_new2 ()
{
  QJsonObject * o = new QJsonObject ( *PQJSONOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QJsonObject()
//[2]QJsonObject(const QJsonObject & other)

HB_FUNC_STATIC( QJSONOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonObject_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool contains(const QString & key) const
*/
$method=|bool|contains|const QString &

/*
int count() const
*/
$method=|int|count|

/*
bool empty() const
*/
$method=|bool|empty|

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
QStringList keys() const
*/
$method=|QStringList|keys|

/*
int length() const
*/
$method=|int|length|

/*
void remove(const QString & key)
*/
$method=|void|remove|const QString &

/*
int size() const
*/
$method=|int|size|

/*
QJsonValue take(const QString & key)
*/
HB_FUNC_STATIC( QJSONOBJECT_TAKE )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->take ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QJsonValue value(const QString & key) const
*/
HB_FUNC_STATIC( QJSONOBJECT_VALUE )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->value ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
