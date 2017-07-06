$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   DATA self_destruction INIT .F.

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
void QFontDialog_new1 ()
{
  QFontDialog * o = new QFontDialog ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QFontDialog ( const QFont & initial, QWidget * parent = 0 )
*/
void QFontDialog_new2 ()
{
  QFontDialog * o = new QFontDialog ( *PQFONT(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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
HB_FUNC_STATIC( QFONTDIALOG_CURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->currentFont () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

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
HB_FUNC_STATIC( QFONTDIALOG_OPTIONS )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->options () );
  }
}

/*
void setOptions ( FontDialogOptions options )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTIONS )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setOptions ( (QFontDialog::FontDialogOptions) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont selectedFont () const
*/
HB_FUNC_STATIC( QFONTDIALOG_SELECTEDFONT )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->selectedFont () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void setOption ( FontDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTION )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setOption ( (QFontDialog::FontDialogOption) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption ( FontDialogOption option ) const
*/
HB_FUNC_STATIC( QFONTDIALOG_TESTOPTION )
{
  QFontDialog * obj = (QFontDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->testOption ( (QFontDialog::FontDialogOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
static QFont getFont(bool *ok, QWidget *parent = 0)
*/
void QFontDialog_getFont1 ()
{
  bool par1;
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, OPQWIDGET(2,0) ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

/*
static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = 0, const QString &title = QString(), FontDialogOptions options = 0)
*/
void QFontDialog_getFont2 ()
{
  bool par1;
  int par5 = ISNIL(5)? (int) 0 : hb_parni(5);
  QFont * ptr = new QFont( QFontDialog::getFont ( &par1, *PQFONT(2), OPQWIDGET(3,0), OPQSTRING(4,QString()), (QFontDialog::FontDialogOptions) par5 ) );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  hb_storl( par1, 1 );
}

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
