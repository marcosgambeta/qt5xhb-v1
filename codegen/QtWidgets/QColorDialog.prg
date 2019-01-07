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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QColorDialog ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )
$internalConstructor=|new2|const QColor &,QWidget *=0

//[1]explicit QColorDialog ( QWidget * parent = 0 )
//[2]explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOLORDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QColorDialog_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTQWIDGET(2) )
  {
    QColorDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QColor currentColor () const
$method=|QColor|currentColor|

$prototype=void setCurrentColor ( const QColor & color )
$method=|void|setCurrentColor|const QColor &

$prototype=void open ()
$internalMethod=|void|open,open1||#ifdef Q_NO_USING_KEYWORD

$prototype=void open ( QObject * receiver, const char * member )
$internalMethod=|void|open,open2|QObject *,const char *

//[1]void open ()
//[2]void open ( QObject * receiver, const char * member )

HB_FUNC_STATIC( QCOLORDIALOG_OPEN )
{
  if( ISNUMPAR(0) )
  {
    QColorDialog_open1(); // TODO: verificar existencia do metodo no Qt 5
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QColorDialog_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=open

$prototype=ColorDialogOptions options () const
$method=|QColorDialog::ColorDialogOptions|options|

$prototype=void setOptions ( ColorDialogOptions options )
$method=|void|setOptions|QColorDialog::ColorDialogOptions

$prototype=QColor selectedColor () const
$method=|QColor|selectedColor|

$prototype=void setOption ( ColorDialogOption option, bool on = true )
$method=|void|setOption|QColorDialog::ColorDialogOption,bool=true

$prototype=bool testOption ( ColorDialogOption option ) const
$method=|bool|testOption|QColorDialog::ColorDialogOption

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=static QColor customColor(int index)
$staticMethod=|QColor|customColor|int

$prototype=static void setCustomColor(int index, QColor color)
$staticMethod=|void|setCustomColor|int,QColor

$prototype=static int customCount ()
$staticMethod=|int|customCount|

$prototype=static QColor getColor(const QColor &initial = Qt::white, QWidget *parent = 0, const QString &title = QString(), ColorDialogOptions options = 0)
$staticMethod=|QColor|getColor|const QColor &=Qt::white,QWidget *=0,const QString &=QString(),QColorDialog::ColorDialogOptions=0

%% TODO: conferir metodo e remover codigo morto
//
////[1]QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
////[2]QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = 0 )
//
//HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
//{
//  if( ISBETWEEN(3,4) && (ISQCOLOR(1)||ISCHAR(1)) && ISQWIDGET(2) && ISCHAR(3) && ISOPTNUM(4) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR1 );
//  }
//  else if( ISBETWEEN(0,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTQWIDGET(2) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR2 );
//  }
//  else
//  {
//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//  }
//}
//?>

$prototype=static QColor standardColor(int index)
$staticMethod=|QColor|standardColor|int

$prototype=static void setStandardColor(int index, QColor color)
$staticMethod=|void|setStandardColor|int,QColor

$beginSignals
$signal=|colorSelected(QColor)
$signal=|currentColorChanged(QColor)
$endSignals

#pragma ENDDUMP
