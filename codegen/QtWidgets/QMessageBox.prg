$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
REQUEST QCHECKBOX
#endif

CLASS QMessageBox INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD setDetailedText
   METHOD escapeButton
   METHOD icon
   METHOD setIcon
   METHOD iconPixmap
   METHOD setIconPixmap
   METHOD informativeText
   METHOD setInformativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton
   METHOD setEscapeButton
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD setStandardButtons
   METHOD text
   METHOD setText
   METHOD textFormat
   METHOD setTextFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning
   METHOD textInteractionFlags
   METHOD setTextInteractionFlags
   METHOD checkBox
   METHOD setCheckBox
   METHOD standardIcon
   METHOD buttonText
   METHOD setButtonText

   METHOD onButtonClicked

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QMessageBox ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/
$internalConstructor=|new2|QMessageBox::Icon,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::NoButton,QWidget *=0,Qt::WindowFlags=Qt::Dialog OR Qt::MSWindowsFixedSizeDialogHint

//[1]explicit QMessageBox ( QWidget * parent = 0 )
//[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMessageBox_new1();
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTQWIDGET(5) && ISOPTNUM(6) )
  {
    QMessageBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addButton ( QAbstractButton * button, ButtonRole role )
*/
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QMessageBox::ButtonRole

/*
QPushButton * addButton ( const QString & text, ButtonRole role )
*/
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QMessageBox::ButtonRole

/*
QPushButton * addButton ( StandardButton button )
*/
$internalMethod=|QPushButton *|addButton,addButton3|QMessageBox::StandardButton

//[1]void addButton ( QAbstractButton * button, ButtonRole role )
//[2]QPushButton * addButton ( const QString & text, ButtonRole role )
//[3]QPushButton * addButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QMessageBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageBox_addButton2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) )
  {
    QMessageBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button ( StandardButton which ) const
*/
$method=|QAbstractButton *|button|QMessageBox::StandardButton

/*
ButtonRole buttonRole ( QAbstractButton * button ) const
*/
$method=|QMessageBox::ButtonRole|buttonRole|QAbstractButton *

/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = (QMessageBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }

    hb_itemReturnRelease(pArray);
  }
}

/*
QAbstractButton * clickedButton () const
*/
$method=|QAbstractButton *|clickedButton|

/*
QPushButton * defaultButton () const
*/
$method=|QPushButton *|defaultButton|

/*
QString detailedText () const
*/
$method=|QString|detailedText||#ifndef QT_NO_TEXTEDIT

/*
void setDetailedText ( const QString & text )
*/
$method=|void|setDetailedText|const QString &|#ifndef QT_NO_TEXTEDIT

/*
QAbstractButton * escapeButton () const
*/
$method=|QAbstractButton *|escapeButton|

/*
Icon icon () const
*/
$method=|QMessageBox::Icon|icon|

/*
void setIcon ( Icon )
*/
$method=|void|setIcon|QMessageBox::Icon

/*
QPixmap iconPixmap () const
*/
$method=|QPixmap|iconPixmap|

/*
void setIconPixmap ( const QPixmap & pixmap )
*/
$method=|void|setIconPixmap|const QPixmap &

/*
QString informativeText () const
*/
$method=|QString|informativeText|

/*
void setInformativeText ( const QString & text )
*/
$method=|void|setInformativeText|const QString &

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
void removeButton ( QAbstractButton * button )
*/
$method=|void|removeButton|QAbstractButton *

/*
void setDefaultButton ( QPushButton * button )
*/
$internalMethod=|void|setDefaultButton,setDefaultButton1|QPushButton *

/*
void setDefaultButton ( StandardButton button )
*/
$internalMethod=|void|setDefaultButton,setDefaultButton2|QMessageBox::StandardButton

//[1]void setDefaultButton ( QPushButton * button )
//[2]void setDefaultButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    QMessageBox_setDefaultButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setDefaultButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEscapeButton ( QAbstractButton * button )
*/
$internalMethod=|void|setEscapeButton,setEscapeButton1|QAbstractButton *

/*
void setEscapeButton ( StandardButton button )
*/
$internalMethod=|void|setEscapeButton,setEscapeButton2|QMessageBox::StandardButton

//[1]void setEscapeButton ( QAbstractButton * button )
//[2]void setEscapeButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QMessageBox_setEscapeButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setEscapeButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
$method=|void|setWindowModality|Qt::WindowModality

/*
void setWindowTitle ( const QString & title )
*/
$method=|void|setWindowTitle|const QString &

/*
StandardButton standardButton ( QAbstractButton * button ) const
*/
$method=|QMessageBox::StandardButton|standardButton|QAbstractButton *

/*
StandardButtons standardButtons () const
*/
$method=|QMessageBox::StandardButtons|standardButtons|

/*
void setStandardButtons ( StandardButtons buttons )
*/
$method=|void|setStandardButtons|QMessageBox::StandardButtons

/*
QString text () const
*/
$method=|QString|text|

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
Qt::TextFormat textFormat () const
*/
$method=|Qt::TextFormat|textFormat|

/*
void setTextFormat ( Qt::TextFormat format )
*/
$method=|void|setTextFormat|Qt::TextFormat

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool|#ifdef Q_OS_WINCE

/*
int exec ()
*/
$method=|int|exec|

/*
static void about ( QWidget * parent, const QString & title, const QString & text )
*/
$staticMethod=|void|about|QWidget *,const QString &,const QString &

/*
static void aboutQt ( QWidget * parent, const QString & title = QString() )
*/
$staticMethod=|void|aboutQt|QWidget *,const QString &=QString()

/*
static StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|critical|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
static StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|information|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
static StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|question|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
static StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
*/
$staticMethod=|QMessageBox::StandardButton|warning|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

/*
Qt::TextInteractionFlags textInteractionFlags() const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
void setTextInteractionFlags (Qt::TextInteractionFlags flags)
*/
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

/*
QCheckBox * checkBox() const
*/
$method=|QCheckBox *|checkBox|

/*
void setCheckBox (QCheckBox *cb)
*/
$method=|void|setCheckBox|QCheckBox *

/*
static QPixmap standardIcon(Icon icon)
*/
$staticMethod=|QPixmap|standardIcon|QMessageBox::Icon

/*
QString buttonText(int button) const
*/
$method=|QString|buttonText|int

/*
void setButtonText(int button, const QString &text)
*/
$method=|void|setButtonText|int,const QString &

#pragma ENDDUMP
