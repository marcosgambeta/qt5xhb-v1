$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QFontDialog ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
explicit QFontDialog ( const QFont & initial, QWidget * parent = 0 )
*/
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

/*
QFont currentFont () const
*/
$method=|QFont|currentFont|

/*
void setCurrentFont ( const QFont & font )
*/
$method=|void|setCurrentFont|const QFont &

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
FontDialogOptions options () const
*/
$method=|QFontDialog::FontDialogOptions|options|

/*
void setOptions ( FontDialogOptions options )
*/
$method=|void|setOptions|QFontDialog::FontDialogOptions

/*
QFont selectedFont () const
*/
$method=|QFont|selectedFont|

/*
void setOption ( FontDialogOption option, bool on = true )
*/
$method=|void|setOption|QFontDialog::FontDialogOption,bool=true

/*
bool testOption ( FontDialogOption option ) const
*/
$method=|bool|testOption|QFontDialog::FontDialogOption

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
static QFont getFont(bool *ok, QWidget *parent = 0)
*/
$staticInternalMethod=|QFont|getFont,getFont1|bool *,QWidget *=0

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0, const QString &title = QString(), FontDialogOptions options = 0)
*/
$staticInternalMethod=|QFont|getFont,getFont2|bool *,const QFont &,QWidget *=0,const QString &=QString(),QFontDialog::FontDialogOptions=0

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

#pragma ENDDUMP
