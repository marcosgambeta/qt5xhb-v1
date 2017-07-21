$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLFIELD
REQUEST QVARIANT
#endif

CLASS QSqlRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD clearValues
   METHOD contains
   METHOD count
   METHOD field
   METHOD fieldName
   METHOD indexOf
   METHOD insert
   METHOD isEmpty
   METHOD isGenerated
   METHOD isNull
   METHOD remove
   METHOD replace
   METHOD setGenerated
   METHOD setNull
   METHOD setValue
   METHOD value
   METHOD keyValues

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

#include <QSqlField>
#include <QVariant>

/*
QSqlRecord ()
*/
$internalConstructor=|new1|

/*
QSqlRecord ( const QSqlRecord & other )
*/
$internalConstructor=|new2|const QSqlRecord &

//[1]QSqlRecord ()
//[2]QSqlRecord ( const QSqlRecord & other )

HB_FUNC_STATIC( QSQLRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLRECORD(1) )
  {
    QSqlRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QSqlField & field )
*/
$method=|void|append|const QSqlField &

/*
void clear ()
*/
$method=|void|clear|

/*
void clearValues ()
*/
$method=|void|clearValues|

/*
bool contains ( const QString & name ) const
*/
$method=|bool|contains|const QString &

/*
int count () const
*/
$method=|int|count|

/*
QSqlField field ( int index ) const
*/
$internalMethod=|QSqlField|field,field1|int

/*
QSqlField field ( const QString & name ) const
*/
$internalMethod=|QSqlField|field,field2|const QString &

//[1]QSqlField field ( int index ) const
//[2]QSqlField field ( const QString & name ) const

HB_FUNC_STATIC( QSQLRECORD_FIELD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_field1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_field2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString fieldName ( int index ) const
*/
$method=|QString|fieldName|int

/*
int indexOf ( const QString & name ) const
*/
$method=|int|indexOf|const QString &

/*
void insert ( int pos, const QSqlField & field )
*/
$method=|void|insert|int,const QSqlField &

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isGenerated ( const QString & name ) const
*/
$internalMethod=|bool|isGenerated,isGenerated1|const QString &

/*
bool isGenerated ( int index ) const
*/
$internalMethod=|bool|isGenerated,isGenerated2|int

//[1]bool isGenerated ( const QString & name ) const
//[2]bool isGenerated ( int index ) const

HB_FUNC_STATIC( QSQLRECORD_ISGENERATED )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_isGenerated1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_isGenerated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isNull ( const QString & name ) const
*/
$internalMethod=|bool|isNull,isNull1|const QString &

/*
bool isNull ( int index ) const
*/
$internalMethod=|bool|isNull,isNull2|int

//[1]bool isNull ( const QString & name ) const
//[2]bool isNull ( int index ) const

HB_FUNC_STATIC( QSQLRECORD_ISNULL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_isNull1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_isNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove ( int pos )
*/
$method=|void|remove|int

/*
void replace ( int pos, const QSqlField & field )
*/
$method=|void|replace|int,const QSqlField &

/*
void setGenerated ( const QString & name, bool generated )
*/
$internalMethod=|void|setGenerated,setGenerated1|const QString &,bool

/*
void setGenerated ( int index, bool generated )
*/
$internalMethod=|void|setGenerated,setGenerated2|int,bool

//[1]void setGenerated ( const QString & name, bool generated )
//[2]void setGenerated ( int index, bool generated )

HB_FUNC_STATIC( QSQLRECORD_SETGENERATED )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    QSqlRecord_setGenerated1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QSqlRecord_setGenerated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setNull ( int index )
*/
$internalMethod=|void|setNull,setNull1|int

/*
void setNull ( const QString & name )
*/
$internalMethod=|void|setNull,setNull2|const QString &

//[1]void setNull ( int index )
//[2]void setNull ( const QString & name )

HB_FUNC_STATIC( QSQLRECORD_SETNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_setNull1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_setNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValue ( int index, const QVariant & val )
*/
$internalMethod=|void|setValue,setValue1|int,const QVariant &

/*
void setValue ( const QString & name, const QVariant & val )
*/
$internalMethod=|void|setValue,setValue2|const QString &,const QVariant &

//[1]void setValue ( int index, const QVariant & val )
//[2]void setValue ( const QString & name, const QVariant & val )

HB_FUNC_STATIC( QSQLRECORD_SETVALUE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    QSqlRecord_setValue1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    QSqlRecord_setValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant value ( int index ) const
*/
$internalMethod=|QVariant|value,value1|int

/*
QVariant value ( const QString & name ) const
*/
$internalMethod=|QVariant|value,value2|const QString &

//[1]QVariant value ( int index ) const
//[2]QVariant value ( const QString & name ) const

HB_FUNC_STATIC( QSQLRECORD_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_value1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSqlRecord keyValues(const QSqlRecord &keyFields) const
*/
$method=|QSqlRecord|keyValues|const QSqlRecord &

$extraMethods

#pragma ENDDUMP
