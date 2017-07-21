$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD setCurrentColor
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedColor
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD setCustomColor
   METHOD customCount
   METHOD getColor
   METHOD standardColor
   METHOD setStandardColor

   METHOD onColorSelected
   METHOD onCurrentColorChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QColorDialog ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
explicit QColorDialog ( const QColor & initial, QWidget * parent = 0 )
*/
void QColorDialog_new2 ()
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QColorDialog * o = new QColorDialog ( par1, OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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

/*
QColor currentColor () const
*/
$method=|QColor|currentColor|

/*
void setCurrentColor ( const QColor & color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQCOLOR(1)||ISCHAR(1)) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      obj->setCurrentColor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void open ()
*/
void QColorDialog_open1 ()
{
#ifdef Q_NO_USING_KEYWORD
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->open ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void open ( QObject * receiver, const char * member )
*/
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

/*
ColorDialogOptions options () const
*/
$method=|QColorDialog::ColorDialogOptions|options|

/*
void setOptions ( ColorDialogOptions options )
*/
$method=|void|setOptions|QColorDialog::ColorDialogOptions

/*
QColor selectedColor () const
*/
$method=|QColor|selectedColor|

/*
void setOption ( ColorDialogOption option, bool on = true )
*/
$method=|void|setOption|QColorDialog::ColorDialogOption,bool=true

/*
bool testOption ( ColorDialogOption option ) const
*/
$method=|bool|testOption|QColorDialog::ColorDialogOption

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
static QColor customColor(int index)
*/
$staticMethod=|QColor|customColor|int

/*
static void setCustomColor(int index, QColor color)
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCUSTOMCOLOR )
{
  if( ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    QColorDialog::setCustomColor ( PINT(1), par2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int customCount ()
*/
$staticMethod=|int|customCount|

/*
static QColor getColor(const QColor &initial = Qt::white, QWidget *parent = 0, const QString &title = QString(), ColorDialogOptions options = 0)
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
{
  if( (ISQCOLOR(1)||ISCHAR(1)||ISNIL(1)) && ISOPTQWIDGET(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QColor par1 = ISNIL(1)? Qt::white : ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    QColor * ptr = new QColor( QColorDialog::getColor ( par1, OPQWIDGET(2,0), OPQSTRING(3,QString()), (QColorDialog::ColorDialogOptions) par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

// TODO: conferir metodo e remover codigo morto
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

/*
static QColor standardColor(int index)
*/
HB_FUNC_STATIC( QCOLORDIALOG_STANDARDCOLOR )
{
  QColor * ptr = new QColor( QColorDialog::standardColor ( PINT(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
}

/*
static void setStandardColor(int index, QColor color)
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETSTANDARDCOLOR )
{
  if( ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    QColorDialog::setStandardColor ( PINT(1), par2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
