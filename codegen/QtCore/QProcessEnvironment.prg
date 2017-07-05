$header

#include "hbclass.ch"

CLASS QProcessEnvironment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD clear
   METHOD contains
   METHOD insert
   METHOD remove
   METHOD value
   METHOD toStringList
   METHOD keys
   METHOD systemEnvironment

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
QProcessEnvironment()
*/
void QProcessEnvironment_new1 ()
{
  QProcessEnvironment * o = new QProcessEnvironment ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QProcessEnvironment(const QProcessEnvironment &other)
*/
void QProcessEnvironment_new2 ()
{
  QProcessEnvironment * o = new QProcessEnvironment ( *PQPROCESSENVIRONMENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QProcessEnvironment()
//[2]QProcessEnvironment(const QProcessEnvironment &other)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QProcessEnvironment_new1();
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    QProcessEnvironment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QProcessEnvironment &other)
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_SWAP )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPROCESSENVIRONMENT(1) )
    {
      QProcessEnvironment * par1 = (QProcessEnvironment *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
void clear()
*/
$method=|void|clear|

/*
bool contains(const QString &name) const
*/
$method=|bool|contains|const QString &

/*
void insert(const QString &name, const QString &value)
*/
void QProcessEnvironment_insert1 ()
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insert ( PQSTRING(1), PQSTRING(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insert(const QProcessEnvironment &e)
*/
void QProcessEnvironment_insert2 ()
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insert ( *PQPROCESSENVIRONMENT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insert(const QString &name, const QString &value)
//[2]void insert(const QProcessEnvironment &e)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QProcessEnvironment_insert1();
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    QProcessEnvironment_insert2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove(const QString &name)
*/
$method=|void|remove|const QString &

/*
QString value(const QString &name, const QString &defaultValue = QString()) const
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_VALUE )
{
  QProcessEnvironment * obj = (QProcessEnvironment *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTCHAR(2) )
    {
      RQSTRING( obj->value ( PQSTRING(1), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList toStringList() const
*/
$method=|QStringList|toStringList|

/*
QStringList keys() const
*/
$method=|QStringList|keys|

/*
static QProcessEnvironment systemEnvironment()
*/
HB_FUNC_STATIC( QPROCESSENVIRONMENT_SYSTEMENVIRONMENT )
{
  QProcessEnvironment * ptr = new QProcessEnvironment( QProcessEnvironment::systemEnvironment () );
  _qt5xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
}

$extraMethods

#pragma ENDDUMP
