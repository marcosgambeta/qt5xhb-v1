%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSql/QSqlField>
#include <QtCore/QVariant>

$prototype=QSqlRecord ()
$internalConstructor=|new1|

$prototype=QSqlRecord ( const QSqlRecord & other )
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

$prototype=void append ( const QSqlField & field )
$method=|void|append|const QSqlField &

$prototype=void clear ()
$method=|void|clear|

$prototype=void clearValues ()
$method=|void|clearValues|

$prototype=bool contains ( const QString & name ) const
$method=|bool|contains|const QString &

$prototype=int count () const
$method=|int|count|

$prototype=QSqlField field ( int index ) const
$internalMethod=|QSqlField|field,field1|int

$prototype=QSqlField field ( const QString & name ) const
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
$addMethod=field

$prototype=QString fieldName ( int index ) const
$method=|QString|fieldName|int

$prototype=int indexOf ( const QString & name ) const
$method=|int|indexOf|const QString &

$prototype=void insert ( int pos, const QSqlField & field )
$method=|void|insert|int,const QSqlField &

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isGenerated ( const QString & name ) const
$internalMethod=|bool|isGenerated,isGenerated1|const QString &

$prototype=bool isGenerated ( int index ) const
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
$addMethod=isGenerated

$prototype=bool isNull ( const QString & name ) const
$internalMethod=|bool|isNull,isNull1|const QString &

$prototype=bool isNull ( int index ) const
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
$addMethod=isNull

$prototype=void remove ( int pos )
$method=|void|remove|int

$prototype=void replace ( int pos, const QSqlField & field )
$method=|void|replace|int,const QSqlField &

$prototype=void setGenerated ( const QString & name, bool generated )
$internalMethod=|void|setGenerated,setGenerated1|const QString &,bool

$prototype=void setGenerated ( int index, bool generated )
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
$addMethod=setGenerated

$prototype=void setNull ( int index )
$internalMethod=|void|setNull,setNull1|int

$prototype=void setNull ( const QString & name )
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
$addMethod=setNull

$prototype=void setValue ( int index, const QVariant & val )
$internalMethod=|void|setValue,setValue1|int,const QVariant &

$prototype=void setValue ( const QString & name, const QVariant & val )
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
$addMethod=setValue

$prototype=QVariant value ( int index ) const
$internalMethod=|QVariant|value,value1|int

$prototype=QVariant value ( const QString & name ) const
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
$addMethod=value

$prototype=QSqlRecord keyValues(const QSqlRecord &keyFields) const
$method=|QSqlRecord|keyValues|const QSqlRecord &

$extraMethods

#pragma ENDDUMP
