%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFileIconProvider()
$constructor=|new|

$deleteMethod

$prototype=virtual QIcon icon(IconType type) const
$internalVirtualMethod=|QIcon|icon,icon1|QFileIconProvider::IconType

$prototype=virtual QIcon icon(const QFileInfo & info) const
$internalVirtualMethod=|QIcon|icon,icon2|const QFileInfo &

//[1]virtual QIcon icon(IconType type) const
//[2]virtual QIcon icon(const QFileInfo & info) const

HB_FUNC_STATIC( QFILEICONPROVIDER_ICON )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFileIconProvider_icon1();
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    QFileIconProvider_icon2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=icon

$prototype=virtual QString type(const QFileInfo & info) const
$virtualMethod=|QString|type|const QFileInfo &

$extraMethods

#pragma ENDDUMP
