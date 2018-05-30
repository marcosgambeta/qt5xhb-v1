%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD setCurrentFont
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedFont
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD getFont

   METHOD onCurrentFontChanged
   METHOD onFontSelected

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QFontDialog ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=explicit QFontDialog ( const QFont & initial, QWidget * parent = 0 )
$internalConstructor=|new2|const QFont &,QWidget *=0

//[1]explicit QFontDialog ( QWidget * parent = 0 )
//[2]explicit QFontDialog ( const QFont & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QFontDialog_new1();
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && ISOPTQWIDGET(2) )
  {
    QFontDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QFont currentFont () const
$method=|QFont|currentFont|

$prototype=void setCurrentFont ( const QFont & font )
$method=|void|setCurrentFont|const QFont &

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=FontDialogOptions options () const
$method=|QFontDialog::FontDialogOptions|options|

$prototype=void setOptions ( FontDialogOptions options )
$method=|void|setOptions|QFontDialog::FontDialogOptions

$prototype=QFont selectedFont () const
$method=|QFont|selectedFont|

$prototype=void setOption ( FontDialogOption option, bool on = true )
$method=|void|setOption|QFontDialog::FontDialogOption,bool=true

$prototype=bool testOption ( FontDialogOption option ) const
$method=|bool|testOption|QFontDialog::FontDialogOption

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=static QFont getFont(bool *ok, QWidget *parent = 0)
$internalStaticMethod=|QFont|getFont,getFont1|bool *,QWidget *=0

$prototype=static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0, const QString &title = QString(), FontDialogOptions options = 0)
$internalStaticMethod=|QFont|getFont,getFont2|bool *,const QFont &,QWidget *=0,const QString &=QString(),QFontDialog::FontDialogOptions=0

//[1]static QFont getFont(bool *ok, QWidget *parent = 0)
//[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0, const QString &title = QString(), FontDialogOptions options = 0)

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTQWIDGET(2) )
  {
    QFontDialog_getFont1();
  }
  else if( ISBETWEEN(2,5) && ISLOG(1) && ISQFONT(2) && ISOPTQWIDGET(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QFontDialog_getFont2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$beginSignals
$signal=|currentFontChanged(QFont)
$signal=|fontSelected(QFont)
$endSignals

#pragma ENDDUMP
