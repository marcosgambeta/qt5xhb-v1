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
$internalConstructor=|new1|

/*
QProcessEnvironment(const QProcessEnvironment &other)
*/
$internalConstructor=|new2|const QProcessEnvironment &

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
$method=|void|swap|QProcessEnvironment &

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
$internalMethod=|void|insert,insert1|const QString &,const QString &

/*
void insert(const QProcessEnvironment &e)
*/
$internalMethod=|void|insert,insert2|const QProcessEnvironment &

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
$method=|QString|value|const QString &,const QString &=QString()

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
$staticMethod=|QProcessEnvironment|systemEnvironment|

$extraMethods

#pragma ENDDUMP
