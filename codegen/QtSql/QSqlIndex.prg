%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSqlRecord

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
$internalConstructor=|new1|const QString &=QString(),const QString &=QString()

$prototype=QSqlIndex ( const QSqlIndex & other )
$internalConstructor=|new2|const QSqlIndex &

//[1]explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
//[2]QSqlIndex ( const QSqlIndex & other )

HB_FUNC_STATIC( QSQLINDEX_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && ISOPTCHAR(2) )
  {
    QSqlIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLINDEX(1) )
  {
    QSqlIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void append ( const QSqlField & field )
$internalMethod=|void|append,append1|const QSqlField &

$prototype=void append ( const QSqlField & field, bool desc )
$internalMethod=|void|append,append2|const QSqlField &,bool

//[1]void append ( const QSqlField & field )
//[2]void append ( const QSqlField & field, bool desc )

HB_FUNC_STATIC( QSQLINDEX_APPEND )
{
  if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    QSqlIndex_append1();
  }
  else if( ISNUMPAR(2) && ISQSQLFIELD(1) && ISLOG(2) )
  {
    QSqlIndex_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=QString cursorName () const
$method=|QString|cursorName|

$prototype=void setCursorName ( const QString & cursorName )
$method=|void|setCursorName|const QString &

$prototype=bool isDescending ( int i ) const
$method=|bool|isDescending|int

$prototype=void setDescending ( int i, bool desc )
$method=|void|setDescending|int,bool

$prototype=QString name () const
$method=|QString|name|

$prototype=void setName ( const QString & name )
$method=|void|setName|const QString &

#pragma ENDDUMP
