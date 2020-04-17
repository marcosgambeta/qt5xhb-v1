%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QSqlRelation ()
$internalConstructor=|new1|

$prototype=QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )
$internalConstructor=|new2|const QString &,const QString &,const QString &

/*
[1]QSqlRelation ()
[2]QSqlRelation ( const QString & tableName, const QString & indexColumn, const QString & displayColumn )
*/

HB_FUNC_STATIC( QSQLRELATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlRelation_new1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QSqlRelation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString displayColumn () const
$method=|QString|displayColumn|

$prototype=QString indexColumn () const
$method=|QString|indexColumn|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString tableName () const
$method=|QString|tableName|

$extraMethods

#pragma ENDDUMP
