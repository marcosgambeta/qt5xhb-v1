%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QAbstractButton>

$prototype=QButtonGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addButton ( QAbstractButton * button )
$internalMethod=|void|addButton,addButton1|QAbstractButton *

$prototype=void addButton ( QAbstractButton * button, int id )
$internalMethod=|void|addButton,addButton2|QAbstractButton *,int

//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QButtonGroup_addButton1 ();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QButtonGroup_addButton2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addButton

$prototype=QAbstractButton * button ( int id ) const
$method=|QAbstractButton *|button|int

$prototype=QList<QAbstractButton *> buttons () const
$method=|QList<QAbstractButton *>|buttons|

$prototype=QAbstractButton * checkedButton () const
$method=|QAbstractButton *|checkedButton|

$prototype=int checkedId () const
$method=|int|checkedId|

$prototype=bool exclusive () const
$method=|bool|exclusive|

$prototype=int id ( QAbstractButton * button ) const
$method=|int|id|QAbstractButton *

$prototype=void removeButton ( QAbstractButton * button )
$method=|void|removeButton|QAbstractButton *

$prototype=void setExclusive ( bool )
$method=|void|setExclusive|bool

$prototype=void setId ( QAbstractButton * button, int id )
$method=|void|setId|QAbstractButton *,int

$beginSignals
$beginGroup
$signal=|buttonClicked(QAbstractButton*)
$signal=|buttonClicked(int)
$endGroup
$beginGroup
$signal=|buttonPressed(QAbstractButton*)
$signal=|buttonPressed(int)
$endGroup
$beginGroup
$signal=|buttonReleased(QAbstractButton*)
$signal=|buttonReleased(int)
$endGroup
$endSignals

#pragma ENDDUMP
