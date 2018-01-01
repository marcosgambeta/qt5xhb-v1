%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCommandLinkButton INHERIT QPushButton

   METHOD new
   METHOD delete
   METHOD description
   METHOD setDescription
   METHOD isFlat
   METHOD setFlat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCommandLinkButton ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QCommandLinkButton ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

$prototype=QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = 0 )
$internalConstructor=|new3|const QString &,const QString &,QWidget *=0

//[1]QCommandLinkButton ( QWidget * parent = 0 )
//[2]QCommandLinkButton ( const QString & text, QWidget * parent = 0 )
//[3]QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCommandLinkButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCommandLinkButton_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QCommandLinkButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString description () const
$method=|QString|description|

$prototype=void setDescription ( const QString & description )
$method=|void|setDescription|const QString &

$prototype=bool isFlat () const
$method=|bool|isFlat|

$prototype=void setFlat ( bool )
$method=|void|setFlat|bool

#pragma ENDDUMP
