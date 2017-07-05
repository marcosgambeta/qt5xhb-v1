$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONVALUE
REQUEST QVARIANT
#endif

CLASS QJsonArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD contains
   METHOD count
   METHOD empty
   METHOD first
   METHOD insert
   METHOD isEmpty
   METHOD last
   METHOD pop_back
   METHOD pop_front
   METHOD prepend
   METHOD push_back
   METHOD push_front
   METHOD removeAt
   METHOD removeFirst
   METHOD removeLast
   METHOD replace
   METHOD size
   METHOD takeAt
   METHOD toVariantList
   METHOD fromStringList
   METHOD fromVariantList

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

#include <QVariantList>
#include <QStringList>

/*
QJsonArray()
*/
void QJsonArray_new1 ()
{
  QJsonArray * o = new QJsonArray ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonArray(const QJsonArray & other)
*/
void QJsonArray_new2 ()
{
  QJsonArray * o = new QJsonArray ( *PQJSONARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QJsonArray()
//[2]QJsonArray(const QJsonArray & other)

HB_FUNC_STATIC( QJSONARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonArray_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonArray_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append(const QJsonValue & value)
*/
$method=|void|append|const QJsonValue &

/*
QJsonValue at(int i) const
*/
HB_FUNC_STATIC( QJSONARRAY_AT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->at ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool contains(const QJsonValue & value) const
*/
$method=|bool|contains|const QJsonValue &

/*
int count() const
*/
$method=|int|count|

/*
bool empty() const
*/
$method=|bool|empty|

/*
QJsonValue first() const
*/
HB_FUNC_STATIC( QJSONARRAY_FIRST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->first () );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}

/*
void insert(int i, const QJsonValue & value)
*/
$method=|void|insert|int,const QJsonValue &

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
QJsonValue last() const
*/
HB_FUNC_STATIC( QJSONARRAY_LAST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonValue * ptr = new QJsonValue( obj->last () );
    _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
  }
}

/*
void pop_back()
*/
$method=|void|pop_back|

/*
void pop_front()
*/
$method=|void|pop_front|

/*
void prepend(const QJsonValue & value)
*/
$method=|void|prepend|const QJsonValue &

/*
void push_back(const QJsonValue & value)
*/
$method=|void|push_back|const QJsonValue &

/*
void push_front(const QJsonValue & value)
*/
$method=|void|push_front|const QJsonValue &

/*
void removeAt(int i)
*/
$method=|void|removeAt|int

/*
void removeFirst()
*/
$method=|void|removeFirst|

/*
void removeLast()
*/
%method=|void|removeLast|

/*
void replace(int i, const QJsonValue & value)
*/
$method=|void|replace|int,const QJsonValue &

/*
int size() const
*/
$method=|int|size|

/*
QJsonValue takeAt(int i)
*/
HB_FUNC_STATIC( QJSONARRAY_TAKEAT )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->takeAt ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariantList toVariantList() const
*/
HB_FUNC_STATIC( QJSONARRAY_TOVARIANTLIST )
{
  QJsonArray * obj = (QJsonArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    _qt5xhb_convert_qvariantlist_to_array( obj->toVariantList () );
  }
}

/*
static QJsonArray fromStringList(const QStringList & list)
*/
HB_FUNC_STATIC( QJSONARRAY_FROMSTRINGLIST )
{
  if( ISARRAY(1) )
  {
    QJsonArray * ptr = new QJsonArray( QJsonArray::fromStringList ( PQSTRINGLIST(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QJsonArray fromVariantList(const QVariantList & list)
*/
HB_FUNC_STATIC( QJSONARRAY_FROMVARIANTLIST )
{
  if( ISARRAY(1) )
  {
    QJsonArray * ptr = new QJsonArray( QJsonArray::fromVariantList ( PQVARIANTLIST(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
