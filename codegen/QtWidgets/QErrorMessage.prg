%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QErrorMessage ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void showMessage ( const QString & message )
$internalMethod=|void|showMessage,showMessage1|const QString &

$prototype=void showMessage ( const QString & message, const QString & type )
$internalMethod=|void|showMessage,showMessage2|const QString &,const QString &

//[1]void showMessage ( const QString & message )
//[2]void showMessage ( const QString & message, const QString & type )

HB_FUNC_STATIC( QERRORMESSAGE_SHOWMESSAGE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QErrorMessage_showMessage1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QErrorMessage_showMessage2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=showMessage

$prototype=static QErrorMessage * qtHandler ()
$staticMethod=|QErrorMessage *|qtHandler|

#pragma ENDDUMP
